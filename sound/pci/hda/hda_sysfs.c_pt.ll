; ModuleID = '/llk/IR/sound/pci/hda/hda_sysfs.c_pt.bc'
source_filename = "../sound/pci/hda/hda_sysfs.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_hda_get_hint:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_hda_get_hint\22\09\09\09\09\09"
module asm "__kstrtabns_snd_hda_get_hint:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_hda_get_bool_hint:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_hda_get_bool_hint\22\09\09\09\09\09"
module asm "__kstrtabns_snd_hda_get_bool_hint:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_hda_get_int_hint:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_hda_get_int_hint\22\09\09\09\09\09"
module asm "__kstrtabns_snd_hda_get_int_hint:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_hda_load_patch:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_hda_load_patch\22\09\09\09\09\09"
module asm "__kstrtabns_snd_hda_load_patch:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.hda_patch_item = type { ptr, ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type {}
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16 }
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
%struct.hda_hint = type { ptr, ptr }
%struct.hdac_bus = type { ptr, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, i32, [16 x ptr], [128 x i32], i32, i32, %struct.work_struct, i32, i32, %struct.hdac_rb, %struct.hdac_rb, [8 x i32], %struct.wait_queue_head, %struct.snd_dma_buffer, %struct.snd_dma_buffer, i32, %struct.list_head, i16, i32, i32, i32, %struct.spinlock, %struct.mutex, %struct.mutex, ptr, i32, i32, i32, i32, %struct.list_head, i8, i32 }
%struct.hdac_rb = type { ptr, i32, i16, i16, [8 x i32], [8 x i32] }
%struct.snd_dma_buffer = type { %struct.snd_dma_device, ptr, i32, i32, ptr }
%struct.snd_dma_device = type { i32, i32, i8, ptr }
%struct.hda_verb = type { i16, i32, i32 }
%struct.hda_pincfg = type { i16, i8, i8, i32 }

@__kstrtab_snd_hda_get_hint = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_hda_get_hint = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_hda_get_hint = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_hda_get_hint to i32), ptr @__kstrtab_snd_hda_get_hint, ptr @__kstrtabns_snd_hda_get_hint }, section "___ksymtab_gpl+snd_hda_get_hint", align 4
@__kstrtab_snd_hda_get_bool_hint = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_hda_get_bool_hint = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_hda_get_bool_hint = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_hda_get_bool_hint to i32), ptr @__kstrtab_snd_hda_get_bool_hint, ptr @__kstrtabns_snd_hda_get_bool_hint }, section "___ksymtab_gpl+snd_hda_get_bool_hint", align 4
@__kstrtab_snd_hda_get_int_hint = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_hda_get_int_hint = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_hda_get_int_hint = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_hda_get_int_hint to i32), ptr @__kstrtab_snd_hda_get_int_hint, ptr @__kstrtabns_snd_hda_get_int_hint }, section "___ksymtab_gpl+snd_hda_get_int_hint", align 4
@patch_items = internal unnamed_addr constant [10 x %struct.hda_patch_item] [%struct.hda_patch_item zeroinitializer, %struct.hda_patch_item { ptr @.str.1, ptr null, ptr @parse_codec_mode }, %struct.hda_patch_item { ptr @.str.2, ptr null, ptr @parse_model_mode }, %struct.hda_patch_item { ptr @.str.3, ptr @.str.4, ptr @parse_pincfg_mode }, %struct.hda_patch_item { ptr @.str.5, ptr @.str.6, ptr @parse_verb_mode }, %struct.hda_patch_item { ptr @.str.7, ptr @.str.8, ptr @parse_hint_mode }, %struct.hda_patch_item { ptr @.str.9, ptr null, ptr @parse_vendor_id_mode }, %struct.hda_patch_item { ptr @.str.10, ptr null, ptr @parse_subsystem_id_mode }, %struct.hda_patch_item { ptr @.str.11, ptr null, ptr @parse_revision_id_mode }, %struct.hda_patch_item { ptr @.str.12, ptr null, ptr @parse_chip_name_mode }], align 4
@__kstrtab_snd_hda_load_patch = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_hda_load_patch = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_hda_load_patch = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_hda_load_patch to i32), ptr @__kstrtab_snd_hda_load_patch, ptr @__kstrtabns_snd_hda_load_patch }, section "___ksymtab_gpl+snd_hda_load_patch", align 4
@hda_dev_attr_group = internal constant %struct.attribute_group { ptr null, ptr null, ptr null, ptr @hda_dev_attrs, ptr null }, align 4
@snd_hda_dev_attr_groups = dso_local local_unnamed_addr global [2 x ptr] [ptr @hda_dev_attr_group, ptr null], align 4
@snd_hda_sysfs_init.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str = private unnamed_addr constant [19 x i8] c"&codec->user_mutex\00", align 1
@_ctype = external dso_local local_unnamed_addr constant [0 x i8], align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"[codec]\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"[model]\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"[pincfg]\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"[user_pin_configs]\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"[verb]\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"[init_verbs]\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"[hint]\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"[hints]\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"[vendor_id]\00", align 1
@.str.10 = private unnamed_addr constant [15 x i8] c"[subsystem_id]\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"[revision_id]\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"[chip_name]\00", align 1
@.str.13 = private unnamed_addr constant [9 x i8] c"%i %i %i\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"%i %i\00", align 1
@hda_dev_attrs = internal global [18 x ptr] [ptr @dev_attr_vendor_id, ptr @dev_attr_subsystem_id, ptr @dev_attr_revision_id, ptr @dev_attr_afg, ptr @dev_attr_mfg, ptr @dev_attr_vendor_name, ptr @dev_attr_chip_name, ptr @dev_attr_modelname, ptr @dev_attr_init_pin_configs, ptr @dev_attr_driver_pin_configs, ptr @dev_attr_power_on_acct, ptr @dev_attr_power_off_acct, ptr @dev_attr_init_verbs, ptr @dev_attr_hints, ptr @dev_attr_user_pin_configs, ptr @dev_attr_reconfig, ptr @dev_attr_clear, ptr null], align 4
@dev_attr_vendor_id = internal global %struct.device_attribute { %struct.attribute { ptr @.str.15, i16 420 }, ptr @vendor_id_show, ptr @vendor_id_store }, align 4
@dev_attr_subsystem_id = internal global %struct.device_attribute { %struct.attribute { ptr @.str.17, i16 420 }, ptr @subsystem_id_show, ptr @subsystem_id_store }, align 4
@dev_attr_revision_id = internal global %struct.device_attribute { %struct.attribute { ptr @.str.18, i16 420 }, ptr @revision_id_show, ptr @revision_id_store }, align 4
@dev_attr_afg = internal global %struct.device_attribute { %struct.attribute { ptr @.str.19, i16 292 }, ptr @afg_show, ptr null }, align 4
@dev_attr_mfg = internal global %struct.device_attribute { %struct.attribute { ptr @.str.20, i16 292 }, ptr @mfg_show, ptr null }, align 4
@dev_attr_vendor_name = internal global %struct.device_attribute { %struct.attribute { ptr @.str.21, i16 420 }, ptr @vendor_name_show, ptr @vendor_name_store }, align 4
@dev_attr_chip_name = internal global %struct.device_attribute { %struct.attribute { ptr @.str.24, i16 420 }, ptr @chip_name_show, ptr @chip_name_store }, align 4
@dev_attr_modelname = internal global %struct.device_attribute { %struct.attribute { ptr @.str.25, i16 420 }, ptr @modelname_show, ptr @modelname_store }, align 4
@dev_attr_init_pin_configs = internal global %struct.device_attribute { %struct.attribute { ptr @.str.26, i16 292 }, ptr @init_pin_configs_show, ptr null }, align 4
@dev_attr_driver_pin_configs = internal global %struct.device_attribute { %struct.attribute { ptr @.str.28, i16 292 }, ptr @driver_pin_configs_show, ptr null }, align 4
@dev_attr_power_on_acct = internal global %struct.device_attribute { %struct.attribute { ptr @.str.29, i16 292 }, ptr @power_on_acct_show, ptr null }, align 4
@dev_attr_power_off_acct = internal global %struct.device_attribute { %struct.attribute { ptr @.str.31, i16 292 }, ptr @power_off_acct_show, ptr null }, align 4
@dev_attr_init_verbs = internal global %struct.device_attribute { %struct.attribute { ptr @.str.32, i16 420 }, ptr @init_verbs_show, ptr @init_verbs_store }, align 4
@dev_attr_hints = internal global %struct.device_attribute { %struct.attribute { ptr @.str.34, i16 420 }, ptr @hints_show, ptr @hints_store }, align 4
@dev_attr_user_pin_configs = internal global %struct.device_attribute { %struct.attribute { ptr @.str.36, i16 420 }, ptr @user_pin_configs_show, ptr @user_pin_configs_store }, align 4
@dev_attr_reconfig = internal global %struct.device_attribute { %struct.attribute { ptr @.str.37, i16 128 }, ptr null, ptr @reconfig_store }, align 4
@dev_attr_clear = internal global %struct.device_attribute { %struct.attribute { ptr @.str.40, i16 128 }, ptr null, ptr @clear_store }, align 4
@.str.15 = private unnamed_addr constant [10 x i8] c"vendor_id\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"0x%x\0A\00", align 1
@.str.17 = private unnamed_addr constant [13 x i8] c"subsystem_id\00", align 1
@.str.18 = private unnamed_addr constant [12 x i8] c"revision_id\00", align 1
@.str.19 = private unnamed_addr constant [4 x i8] c"afg\00", align 1
@.str.20 = private unnamed_addr constant [4 x i8] c"mfg\00", align 1
@.str.21 = private unnamed_addr constant [12 x i8] c"vendor_name\00", align 1
@.str.22 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.23 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.24 = private unnamed_addr constant [10 x i8] c"chip_name\00", align 1
@.str.25 = private unnamed_addr constant [10 x i8] c"modelname\00", align 1
@.str.26 = private unnamed_addr constant [17 x i8] c"init_pin_configs\00", align 1
@.str.27 = private unnamed_addr constant [15 x i8] c"0x%02x 0x%08x\0A\00", align 1
@.str.28 = private unnamed_addr constant [19 x i8] c"driver_pin_configs\00", align 1
@.str.29 = private unnamed_addr constant [14 x i8] c"power_on_acct\00", align 1
@.str.30 = private unnamed_addr constant [4 x i8] c"%u\0A\00", align 1
@.str.31 = private unnamed_addr constant [15 x i8] c"power_off_acct\00", align 1
@.str.32 = private unnamed_addr constant [11 x i8] c"init_verbs\00", align 1
@.str.33 = private unnamed_addr constant [22 x i8] c"0x%02x 0x%03x 0x%04x\0A\00", align 1
@.str.34 = private unnamed_addr constant [6 x i8] c"hints\00", align 1
@.str.35 = private unnamed_addr constant [9 x i8] c"%s = %s\0A\00", align 1
@.str.36 = private unnamed_addr constant [17 x i8] c"user_pin_configs\00", align 1
@.str.37 = private unnamed_addr constant [9 x i8] c"reconfig\00", align 1
@.str.38 = private unnamed_addr constant [26 x i8] c"hda-codec: reconfiguring\0A\00", align 1
@.str.39 = private unnamed_addr constant [45 x i8] c"The codec is being used, can't reconfigure.\0A\00", align 1
@.str.40 = private unnamed_addr constant [6 x i8] c"clear\00", align 1
@.str.41 = private unnamed_addr constant [38 x i8] c"The codec is being used, can't free.\0A\00", align 1
@llvm.compiler.used = appending global [4 x ptr] [ptr @__ksymtab_snd_hda_get_bool_hint, ptr @__ksymtab_snd_hda_get_hint, ptr @__ksymtab_snd_hda_get_int_hint, ptr @__ksymtab_snd_hda_load_patch], section "llvm.metadata"

; Function Attrs: nofree nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local ptr @snd_hda_get_hint(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 28
  %4 = load i32, ptr %3, align 8
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %27, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 28, i32 4
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 28, i32 2
  br label %10

10:                                               ; preds = %16, %6
  %11 = phi i32 [ 0, %6 ], [ %17, %16 ]
  %12 = phi ptr [ %8, %6 ], [ %20, %16 ]
  %13 = load ptr, ptr %12, align 4
  %14 = tail call i32 @strcmp(ptr noundef %13, ptr noundef %1) #10
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %22, label %16

16:                                               ; preds = %10
  %17 = add nuw i32 %11, 1
  %18 = load i32, ptr %9, align 4
  %19 = mul i32 %18, %17
  %20 = getelementptr i8, ptr %8, i32 %19
  %21 = icmp eq i32 %17, %4
  br i1 %21, label %27, label %10

22:                                               ; preds = %10
  %23 = icmp eq ptr %12, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %22
  %25 = getelementptr inbounds %struct.hda_hint, ptr %12, i32 0, i32 1
  %26 = load ptr, ptr %25, align 4
  br label %27

27:                                               ; preds = %24, %22, %16, %2
  %28 = phi ptr [ %26, %24 ], [ null, %22 ], [ null, %2 ], [ null, %16 ]
  ret ptr %28
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @snd_hda_get_bool_hint(ptr noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 26
  tail call void @mutex_lock(ptr noundef %3) #10
  %4 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 28
  %5 = load i32, ptr %4, align 8
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %41, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 28, i32 4
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 28, i32 2
  br label %11

11:                                               ; preds = %17, %7
  %12 = phi i32 [ 0, %7 ], [ %18, %17 ]
  %13 = phi ptr [ %9, %7 ], [ %21, %17 ]
  %14 = load ptr, ptr %13, align 4
  %15 = tail call i32 @strcmp(ptr noundef %14, ptr noundef %1) #10
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %23, label %17

17:                                               ; preds = %11
  %18 = add nuw i32 %12, 1
  %19 = load i32, ptr %10, align 4
  %20 = mul i32 %19, %18
  %21 = getelementptr i8, ptr %9, i32 %20
  %22 = icmp eq i32 %18, %5
  br i1 %22, label %41, label %11

23:                                               ; preds = %11
  %24 = icmp eq ptr %13, null
  br i1 %24, label %41, label %25

25:                                               ; preds = %23
  %26 = getelementptr inbounds %struct.hda_hint, ptr %13, i32 0, i32 1
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %41, label %29

29:                                               ; preds = %25
  %30 = load i8, ptr %27, align 1
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %41, label %32

32:                                               ; preds = %29
  %33 = zext i8 %30 to i32
  %34 = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %33
  %35 = load i8, ptr %34, align 1
  %36 = and i8 %35, 2
  %37 = icmp eq i8 %36, 0
  %38 = add i8 %30, -32
  %39 = select i1 %37, i8 %30, i8 %38
  switch i8 %39, label %40 [
    i8 84, label %41
    i8 89, label %41
    i8 49, label %41
  ]

40:                                               ; preds = %32
  br label %41

41:                                               ; preds = %40, %32, %32, %32, %29, %25, %23, %17, %2
  %42 = phi i32 [ 0, %40 ], [ -2, %29 ], [ -2, %25 ], [ 1, %32 ], [ 1, %32 ], [ 1, %32 ], [ -2, %23 ], [ -2, %2 ], [ -2, %17 ]
  tail call void @mutex_unlock(ptr noundef %3) #10
  ret i32 %42
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @snd_hda_get_int_hint(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) #2 {
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #10
  store i32 0, ptr %4, align 4, !annotation !8
  %5 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 26
  tail call void @mutex_lock(ptr noundef %5) #10
  %6 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 28
  %7 = load i32, ptr %6, align 8
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %36, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 28, i32 4
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 28, i32 2
  br label %13

13:                                               ; preds = %19, %9
  %14 = phi i32 [ 0, %9 ], [ %20, %19 ]
  %15 = phi ptr [ %11, %9 ], [ %23, %19 ]
  %16 = load ptr, ptr %15, align 4
  %17 = tail call i32 @strcmp(ptr noundef %16, ptr noundef %1) #10
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %25, label %19

19:                                               ; preds = %13
  %20 = add nuw i32 %14, 1
  %21 = load i32, ptr %12, align 4
  %22 = mul i32 %21, %20
  %23 = getelementptr i8, ptr %11, i32 %22
  %24 = icmp eq i32 %20, %7
  br i1 %24, label %36, label %13

25:                                               ; preds = %13
  %26 = icmp eq ptr %15, null
  br i1 %26, label %36, label %27

27:                                               ; preds = %25
  %28 = getelementptr inbounds %struct.hda_hint, ptr %15, i32 0, i32 1
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %36, label %31

31:                                               ; preds = %27
  %32 = call i32 @_kstrtoul(ptr noundef nonnull %29, i32 noundef 0, ptr noundef nonnull %4) #10
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %31
  %35 = load i32, ptr %4, align 4
  store i32 %35, ptr %2, align 4
  br label %36

36:                                               ; preds = %34, %31, %27, %25, %19, %3
  %37 = phi i32 [ 0, %34 ], [ -2, %27 ], [ -22, %31 ], [ -2, %25 ], [ -2, %3 ], [ -2, %19 ]
  call void @mutex_unlock(ptr noundef %5) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #10
  ret i32 %37
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @snd_hda_load_patch(ptr noundef %0, i32 noundef %1, ptr noundef %2) #2 {
  %4 = alloca [128 x i8], align 1
  %5 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %4) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(128) %4, i8 0, i32 128, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #10
  store ptr null, ptr %5, align 4
  br label %8

6:                                                ; preds = %95, %89, %82
  %7 = phi i32 [ %78, %82 ], [ %78, %89 ], [ 0, %95 ]
  br label %8

8:                                                ; preds = %6, %3
  %9 = phi i32 [ %74, %6 ], [ %1, %3 ]
  %10 = phi ptr [ %73, %6 ], [ %2, %3 ]
  %11 = phi i32 [ %7, %6 ], [ 0, %3 ]
  %12 = getelementptr [10 x %struct.hda_patch_item], ptr @patch_items, i32 0, i32 %11, i32 2
  %13 = and i32 %11, 1073741823
  %14 = icmp eq i32 %13, 0
  %15 = icmp ult i32 %11, 2
  br label %16

16:                                               ; preds = %100, %8
  %17 = phi i32 [ %9, %8 ], [ %74, %100 ]
  %18 = phi ptr [ %10, %8 ], [ %73, %100 ]
  br label %19

19:                                               ; preds = %76, %16
  %20 = phi i32 [ %17, %16 ], [ %74, %76 ]
  %21 = phi ptr [ %18, %16 ], [ %73, %76 ]
  %22 = load i8, ptr %21, align 1
  %23 = zext i8 %22 to i32
  %24 = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %23
  %25 = load i8, ptr %24, align 1
  %26 = and i8 %25, 32
  %27 = icmp ne i8 %26, 0
  %28 = icmp ne i32 %20, 0
  %29 = select i1 %27, i1 %28, i1 false
  br i1 %29, label %30, label %43

30:                                               ; preds = %30, %19
  %31 = phi ptr [ %33, %30 ], [ %21, %19 ]
  %32 = phi i32 [ %34, %30 ], [ %20, %19 ]
  %33 = getelementptr i8, ptr %31, i32 1
  %34 = add i32 %32, -1
  %35 = load i8, ptr %33, align 1
  %36 = zext i8 %35 to i32
  %37 = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %36
  %38 = load i8, ptr %37, align 1
  %39 = and i8 %38, 32
  %40 = icmp ne i8 %39, 0
  %41 = icmp ne i32 %34, 0
  %42 = select i1 %40, i1 %41, i1 false
  br i1 %42, label %30, label %43

43:                                               ; preds = %30, %19
  %44 = phi i8 [ %22, %19 ], [ %35, %30 ]
  %45 = phi i32 [ %20, %19 ], [ %34, %30 ]
  %46 = phi ptr [ %21, %19 ], [ %33, %30 ]
  %47 = phi i1 [ %28, %19 ], [ %41, %30 ]
  br i1 %47, label %48, label %106

48:                                               ; preds = %43
  %49 = icmp eq i32 %45, 0
  br i1 %49, label %70, label %50

50:                                               ; preds = %68, %48
  %51 = phi i8 [ %69, %68 ], [ %44, %48 ]
  %52 = phi ptr [ %65, %68 ], [ %46, %48 ]
  %53 = phi i32 [ %66, %68 ], [ 0, %48 ]
  %54 = phi ptr [ %64, %68 ], [ %4, %48 ]
  switch i8 %51, label %58 [
    i8 0, label %70
    i8 10, label %55
  ]

55:                                               ; preds = %50
  %56 = getelementptr i8, ptr %52, i32 1
  %57 = add nuw i32 %53, 1
  br label %70

58:                                               ; preds = %50
  %59 = icmp slt i32 %53, 127
  br i1 %59, label %60, label %63

60:                                               ; preds = %58
  %61 = getelementptr i8, ptr %52, i32 1
  %62 = getelementptr i8, ptr %54, i32 1
  store i8 %51, ptr %54, align 1
  br label %63

63:                                               ; preds = %60, %58
  %64 = phi ptr [ %62, %60 ], [ %54, %58 ]
  %65 = phi ptr [ %61, %60 ], [ %52, %58 ]
  %66 = add nuw i32 %53, 1
  %67 = icmp eq i32 %66, %45
  br i1 %67, label %70, label %68

68:                                               ; preds = %63
  %69 = load i8, ptr %65, align 1
  br label %50

70:                                               ; preds = %63, %55, %50, %48
  %71 = phi ptr [ %54, %55 ], [ %4, %48 ], [ %54, %50 ], [ %64, %63 ]
  %72 = phi i32 [ %57, %55 ], [ 0, %48 ], [ %53, %50 ], [ %45, %63 ]
  %73 = phi ptr [ %56, %55 ], [ %46, %48 ], [ %52, %50 ], [ %65, %63 ]
  store i8 0, ptr %71, align 1
  %74 = sub i32 %45, %72
  %75 = load i8, ptr %4, align 1
  switch i8 %75, label %98 [
    i8 35, label %76
    i8 10, label %76
    i8 0, label %76
    i8 91, label %77
  ]

76:                                               ; preds = %70, %70, %70
  br label %19

77:                                               ; preds = %95, %70
  %78 = phi i32 [ %96, %95 ], [ 0, %70 ]
  %79 = getelementptr [10 x %struct.hda_patch_item], ptr @patch_items, i32 0, i32 %78
  %80 = load ptr, ptr %79, align 4
  %81 = icmp eq ptr %80, null
  br i1 %81, label %95, label %82

82:                                               ; preds = %77
  %83 = call i32 @strlen(ptr noundef nonnull %80) #10
  %84 = call i32 @strncasecmp(ptr noundef nonnull %4, ptr noundef nonnull %80, i32 noundef %83) #10
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %6, label %86

86:                                               ; preds = %82
  %87 = add nsw i32 %78, -6
  %88 = icmp ult i32 %87, -3
  br i1 %88, label %95, label %89

89:                                               ; preds = %86
  %90 = getelementptr [10 x %struct.hda_patch_item], ptr @patch_items, i32 0, i32 %78, i32 1
  %91 = load ptr, ptr %90, align 4
  %92 = call i32 @strlen(ptr noundef %91) #10
  %93 = call i32 @strncasecmp(ptr noundef nonnull %4, ptr noundef %91, i32 noundef %92) #10
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %6, label %95

95:                                               ; preds = %89, %86, %77
  %96 = add nuw nsw i32 %78, 1
  %97 = icmp eq i32 %96, 10
  br i1 %97, label %6, label %77

98:                                               ; preds = %70
  %99 = load ptr, ptr %12, align 4
  br i1 %14, label %100, label %101

100:                                              ; preds = %105, %101, %98
  br label %16

101:                                              ; preds = %98
  %102 = load ptr, ptr %5, align 4
  %103 = icmp ne ptr %102, null
  %104 = select i1 %103, i1 true, i1 %15
  br i1 %104, label %105, label %100

105:                                              ; preds = %101
  call void %99(ptr noundef nonnull %4, ptr noundef %0, ptr noundef nonnull %5) #10
  br label %100

106:                                              ; preds = %43
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %4) #10
  ret i32 0
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @snd_hda_sysfs_init(ptr noundef %0) local_unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 26
  tail call void @__mutex_init(ptr noundef %2, ptr noundef nonnull @.str, ptr noundef nonnull @snd_hda_sysfs_init.__key) #10
  %3 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 27, i32 2
  store i32 12, ptr %3, align 4
  %4 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 27, i32 3
  store i32 32, ptr %4, align 4
  %5 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 28, i32 2
  store i32 8, ptr %5, align 4
  %6 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 28, i32 3
  store i32 32, ptr %6, align 4
  %7 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 29, i32 2
  store i32 8, ptr %7, align 4
  %8 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 29, i32 3
  store i32 16, ptr %8, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @snd_hda_sysfs_clear(ptr noundef %0) local_unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 27
  tail call void @snd_array_free(ptr noundef %2) #10
  %3 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 28
  %4 = load i32, ptr %3, align 8
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %21, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 28, i32 4
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 28, i32 2
  br label %10

10:                                               ; preds = %10, %6
  %11 = phi i32 [ 0, %6 ], [ %14, %10 ]
  %12 = phi ptr [ %8, %6 ], [ %18, %10 ]
  %13 = load ptr, ptr %12, align 4
  tail call void @kfree(ptr noundef %13) #10
  %14 = add nuw i32 %11, 1
  %15 = load ptr, ptr %7, align 4
  %16 = load i32, ptr %9, align 4
  %17 = mul i32 %16, %14
  %18 = getelementptr i8, ptr %15, i32 %17
  %19 = load i32, ptr %3, align 8
  %20 = icmp ult i32 %14, %19
  br i1 %20, label %10, label %21

21:                                               ; preds = %10, %1
  tail call void @snd_array_free(ptr noundef %3) #10
  %22 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 29
  tail call void @snd_array_free(ptr noundef %22) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_array_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtoul(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncasecmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @parse_codec_mode(ptr nocapture noundef readonly %0, ptr noundef readonly %1, ptr nocapture noundef writeonly %2) #7 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #10
  store i32 0, ptr %4, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #10
  store i32 0, ptr %5, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #10
  store i32 0, ptr %6, align 4, !annotation !8
  store ptr null, ptr %2, align 4
  %7 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %0, ptr noundef nonnull @.str.13, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %6)
  %8 = icmp eq i32 %7, 3
  br i1 %8, label %9, label %39

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.hdac_bus, ptr %1, i32 0, i32 11
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, %10
  br i1 %12, label %39, label %13

13:                                               ; preds = %9
  %14 = load i32, ptr %4, align 4
  %15 = icmp slt i32 %14, 1
  %16 = load i32, ptr %5, align 4
  %17 = icmp slt i32 %16, 1
  %18 = load i32, ptr %6, align 4
  br label %19

19:                                               ; preds = %36, %13
  %20 = phi ptr [ %11, %13 ], [ %37, %36 ]
  br i1 %15, label %25, label %21

21:                                               ; preds = %19
  %22 = getelementptr i8, ptr %20, i32 12
  %23 = load i32, ptr %22, align 8
  %24 = icmp eq i32 %23, %14
  br i1 %24, label %25, label %36

25:                                               ; preds = %21, %19
  br i1 %17, label %30, label %26

26:                                               ; preds = %25
  %27 = getelementptr i8, ptr %20, i32 16
  %28 = load i32, ptr %27, align 4
  %29 = icmp eq i32 %28, %16
  br i1 %29, label %30, label %36

30:                                               ; preds = %26, %25
  %31 = getelementptr i8, ptr %20, i32 -4
  %32 = load i32, ptr %31, align 8
  %33 = icmp eq i32 %32, %18
  br i1 %33, label %34, label %36

34:                                               ; preds = %30
  %35 = getelementptr i8, ptr %20, i32 -484
  store ptr %35, ptr %2, align 4
  br label %39

36:                                               ; preds = %30, %26, %21
  %37 = load ptr, ptr %20, align 4
  %38 = icmp eq ptr %37, %10
  br i1 %38, label %39, label %19

39:                                               ; preds = %36, %34, %9, %3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @parse_model_mode(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readonly %2) #2 {
  %4 = load ptr, ptr %2, align 4
  %5 = getelementptr inbounds %struct.hda_codec, ptr %4, i32 0, i32 6
  %6 = load ptr, ptr %5, align 4
  tail call void @kfree(ptr noundef %6) #10
  %7 = tail call noalias ptr @kstrdup(ptr noundef %0, i32 noundef 3264) #10
  %8 = load ptr, ptr %2, align 4
  %9 = getelementptr inbounds %struct.hda_codec, ptr %8, i32 0, i32 6
  store ptr %7, ptr %9, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @parse_pincfg_mode(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readonly %2) #2 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = load ptr, ptr %2, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #10
  store i32 0, ptr %4, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #10
  store i32 0, ptr %5, align 4, !annotation !8
  %7 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %0, ptr noundef nonnull @.str.14, ptr noundef nonnull %4, ptr noundef nonnull %5) #10
  %8 = icmp ne i32 %7, 2
  %9 = load i32, ptr %4, align 4
  %10 = icmp eq i32 %9, 0
  %11 = select i1 %8, i1 true, i1 %10
  br i1 %11, label %19, label %12

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.hda_codec, ptr %6, i32 0, i32 26
  call void @mutex_lock(ptr noundef %13) #10
  %14 = getelementptr inbounds %struct.hda_codec, ptr %6, i32 0, i32 29
  %15 = load i32, ptr %4, align 4
  %16 = trunc i32 %15 to i16
  %17 = load i32, ptr %5, align 4
  %18 = call i32 @snd_hda_add_pincfg(ptr noundef %6, ptr noundef %14, i16 noundef zeroext %16, i32 noundef %17) #10
  call void @mutex_unlock(ptr noundef %13) #10
  br label %19

19:                                               ; preds = %12, %3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @parse_verb_mode(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readonly %2) #2 {
  %4 = load ptr, ptr %2, align 4
  %5 = tail call fastcc i32 @parse_init_verbs(ptr noundef %4, ptr noundef %0)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @parse_hint_mode(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readonly %2) #2 {
  %4 = load ptr, ptr %2, align 4
  %5 = tail call fastcc i32 @parse_hints(ptr noundef %4, ptr noundef %0)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @parse_vendor_id_mode(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readonly %2) #2 {
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #10
  store i32 0, ptr %4, align 4, !annotation !8
  %5 = call i32 @_kstrtoul(ptr noundef %0, i32 noundef 0, ptr noundef nonnull %4) #10
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %11

7:                                                ; preds = %3
  %8 = load i32, ptr %4, align 4
  %9 = load ptr, ptr %2, align 4
  %10 = getelementptr inbounds %struct.hdac_device, ptr %9, i32 0, i32 7
  store i32 %8, ptr %10, align 8
  br label %11

11:                                               ; preds = %7, %3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @parse_subsystem_id_mode(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readonly %2) #2 {
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #10
  store i32 0, ptr %4, align 4, !annotation !8
  %5 = call i32 @_kstrtoul(ptr noundef %0, i32 noundef 0, ptr noundef nonnull %4) #10
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %11

7:                                                ; preds = %3
  %8 = load i32, ptr %4, align 4
  %9 = load ptr, ptr %2, align 4
  %10 = getelementptr inbounds %struct.hdac_device, ptr %9, i32 0, i32 8
  store i32 %8, ptr %10, align 4
  br label %11

11:                                               ; preds = %7, %3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @parse_revision_id_mode(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readonly %2) #2 {
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #10
  store i32 0, ptr %4, align 4, !annotation !8
  %5 = call i32 @_kstrtoul(ptr noundef %0, i32 noundef 0, ptr noundef nonnull %4) #10
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %11

7:                                                ; preds = %3
  %8 = load i32, ptr %4, align 4
  %9 = load ptr, ptr %2, align 4
  %10 = getelementptr inbounds %struct.hdac_device, ptr %9, i32 0, i32 9
  store i32 %8, ptr %10, align 8
  br label %11

11:                                               ; preds = %7, %3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @parse_chip_name_mode(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readonly %2) #2 {
  %4 = load ptr, ptr %2, align 4
  %5 = tail call i32 @snd_hda_codec_set_name(ptr noundef %4, ptr noundef %0) #10
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kstrdup(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hda_add_pincfg(ptr noundef, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @parse_init_verbs(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #2 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #10
  store i32 0, ptr %3, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #10
  store i32 0, ptr %4, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #10
  store i32 0, ptr %5, align 4, !annotation !8
  %6 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %1, ptr noundef nonnull @.str.13, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %5)
  %7 = icmp eq i32 %6, 3
  br i1 %7, label %8, label %28

8:                                                ; preds = %2
  %9 = load i32, ptr %3, align 4
  %10 = icmp ne i32 %9, 0
  %11 = load i32, ptr %4, align 4
  %12 = icmp ne i32 %11, 0
  %13 = select i1 %10, i1 %12, i1 false
  br i1 %13, label %14, label %28

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 26
  call void @mutex_lock(ptr noundef %15) #10
  %16 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 27
  %17 = call ptr @snd_array_new(ptr noundef %16) #10
  %18 = icmp eq ptr %17, null
  br i1 %18, label %26, label %19

19:                                               ; preds = %14
  %20 = load i32, ptr %3, align 4
  %21 = trunc i32 %20 to i16
  store i16 %21, ptr %17, align 4
  %22 = load i32, ptr %4, align 4
  %23 = getelementptr inbounds %struct.hda_verb, ptr %17, i32 0, i32 1
  store i32 %22, ptr %23, align 4
  %24 = load i32, ptr %5, align 4
  %25 = getelementptr inbounds %struct.hda_verb, ptr %17, i32 0, i32 2
  store i32 %24, ptr %25, align 4
  br label %26

26:                                               ; preds = %19, %14
  %27 = phi i32 [ 0, %19 ], [ -12, %14 ]
  call void @mutex_unlock(ptr noundef %15) #10
  br label %28

28:                                               ; preds = %26, %8, %2
  %29 = phi i32 [ -22, %2 ], [ -22, %8 ], [ %27, %26 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #10
  ret i32 %29
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_array_new(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @parse_hints(ptr noundef %0, ptr noundef %1) unnamed_addr #2 {
  %3 = tail call ptr @skip_spaces(ptr noundef %1) #10
  %4 = load i8, ptr %3, align 1
  switch i8 %4, label %6 [
    i8 0, label %86
    i8 35, label %86
    i8 10, label %86
    i8 61, label %5
  ]

5:                                                ; preds = %2
  br label %86

6:                                                ; preds = %2
  %7 = tail call ptr @kstrndup(ptr noundef %3, i32 noundef 1024, i32 noundef 3264) #10
  %8 = icmp eq ptr %7, null
  br i1 %8, label %86, label %9

9:                                                ; preds = %6
  %10 = tail call ptr @strchr(ptr noundef nonnull %7, i32 noundef 10) #10
  %11 = icmp eq ptr %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %9
  store i8 0, ptr %10, align 1
  br label %13

13:                                               ; preds = %12, %9
  %14 = tail call ptr @strchr(ptr noundef nonnull %7, i32 noundef 61)
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %13
  tail call void @kfree(ptr noundef nonnull %7) #10
  br label %86

17:                                               ; preds = %13
  %18 = getelementptr i8, ptr %14, i32 1
  store i8 0, ptr %14, align 1
  %19 = tail call ptr @skip_spaces(ptr noundef %18) #10
  %20 = load i8, ptr %7, align 1
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %36, label %22

22:                                               ; preds = %17
  %23 = tail call i32 @strlen(ptr noundef nonnull %7) #10
  %24 = getelementptr i8, ptr %7, i32 %23
  br label %25

25:                                               ; preds = %34, %22
  %26 = phi ptr [ %24, %22 ], [ %27, %34 ]
  %27 = getelementptr i8, ptr %26, i32 -1
  %28 = load i8, ptr %27, align 1
  %29 = zext i8 %28 to i32
  %30 = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %29
  %31 = load i8, ptr %30, align 1
  %32 = and i8 %31, 32
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %36, label %34

34:                                               ; preds = %25
  store i8 0, ptr %27, align 1
  %35 = icmp eq ptr %27, %7
  br i1 %35, label %36, label %25

36:                                               ; preds = %34, %25, %17
  %37 = load i8, ptr %19, align 1
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %53, label %39

39:                                               ; preds = %36
  %40 = tail call i32 @strlen(ptr noundef %19) #10
  %41 = getelementptr i8, ptr %19, i32 %40
  br label %42

42:                                               ; preds = %51, %39
  %43 = phi ptr [ %41, %39 ], [ %44, %51 ]
  %44 = getelementptr i8, ptr %43, i32 -1
  %45 = load i8, ptr %44, align 1
  %46 = zext i8 %45 to i32
  %47 = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %46
  %48 = load i8, ptr %47, align 1
  %49 = and i8 %48, 32
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %53, label %51

51:                                               ; preds = %42
  store i8 0, ptr %44, align 1
  %52 = icmp eq ptr %44, %19
  br i1 %52, label %53, label %42

53:                                               ; preds = %51, %42, %36
  %54 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 26
  tail call void @mutex_lock(ptr noundef %54) #10
  %55 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 28
  %56 = load i32, ptr %55, align 8
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %79, label %58

58:                                               ; preds = %53
  %59 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 28, i32 4
  %60 = load ptr, ptr %59, align 8
  %61 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 28, i32 2
  br label %62

62:                                               ; preds = %68, %58
  %63 = phi i32 [ 0, %58 ], [ %69, %68 ]
  %64 = phi ptr [ %60, %58 ], [ %72, %68 ]
  %65 = load ptr, ptr %64, align 4
  %66 = tail call i32 @strcmp(ptr noundef %65, ptr noundef nonnull %7) #10
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %74, label %68

68:                                               ; preds = %62
  %69 = add nuw i32 %63, 1
  %70 = load i32, ptr %61, align 4
  %71 = mul i32 %70, %69
  %72 = getelementptr i8, ptr %60, i32 %71
  %73 = icmp eq i32 %69, %56
  br i1 %73, label %77, label %62

74:                                               ; preds = %62
  %75 = icmp eq ptr %64, null
  br i1 %75, label %77, label %76

76:                                               ; preds = %74
  tail call void @kfree(ptr noundef %65) #10
  br label %82

77:                                               ; preds = %74, %68
  %78 = icmp ugt i32 %56, 1023
  br i1 %78, label %85, label %79

79:                                               ; preds = %77, %53
  %80 = tail call ptr @snd_array_new(ptr noundef %55) #10
  %81 = icmp eq ptr %80, null
  br i1 %81, label %85, label %82

82:                                               ; preds = %79, %76
  %83 = phi ptr [ %64, %76 ], [ %80, %79 ]
  store ptr %7, ptr %83, align 4
  %84 = getelementptr inbounds %struct.hda_hint, ptr %83, i32 0, i32 1
  store ptr %19, ptr %84, align 4
  tail call void @mutex_unlock(ptr noundef %54) #10
  br label %86

85:                                               ; preds = %79, %77
  tail call void @mutex_unlock(ptr noundef %54) #10
  tail call void @kfree(ptr noundef nonnull %7) #10
  br label %86

86:                                               ; preds = %85, %82, %16, %6, %5, %2, %2, %2
  %87 = phi i32 [ -22, %5 ], [ -22, %16 ], [ 0, %2 ], [ 0, %2 ], [ 0, %2 ], [ -12, %85 ], [ -12, %6 ], [ 0, %82 ]
  ret i32 %87
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skip_spaces(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kstrndup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hda_codec_set_name(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vendor_id_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #7 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.hdac_device, ptr %5, i32 0, i32 7
  %7 = load i32, ptr %6, align 8
  %8 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.16, i32 noundef %7)
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vendor_id_store(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2, i32 noundef %3) #2 {
  %5 = alloca i32, align 4
  %6 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %7 = load ptr, ptr %6, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #10
  store i32 0, ptr %5, align 4, !annotation !8
  %8 = call i32 @_kstrtoul(ptr noundef %2, i32 noundef 0, ptr noundef nonnull %5) #10
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %4
  %11 = load i32, ptr %5, align 4
  %12 = getelementptr inbounds %struct.hdac_device, ptr %7, i32 0, i32 7
  store i32 %11, ptr %12, align 8
  br label %13

13:                                               ; preds = %10, %4
  %14 = phi i32 [ %3, %10 ], [ %8, %4 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #10
  ret i32 %14
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @subsystem_id_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #7 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.hdac_device, ptr %5, i32 0, i32 8
  %7 = load i32, ptr %6, align 4
  %8 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.16, i32 noundef %7)
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @subsystem_id_store(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2, i32 noundef %3) #2 {
  %5 = alloca i32, align 4
  %6 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %7 = load ptr, ptr %6, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #10
  store i32 0, ptr %5, align 4, !annotation !8
  %8 = call i32 @_kstrtoul(ptr noundef %2, i32 noundef 0, ptr noundef nonnull %5) #10
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %4
  %11 = load i32, ptr %5, align 4
  %12 = getelementptr inbounds %struct.hdac_device, ptr %7, i32 0, i32 8
  store i32 %11, ptr %12, align 4
  br label %13

13:                                               ; preds = %10, %4
  %14 = phi i32 [ %3, %10 ], [ %8, %4 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #10
  ret i32 %14
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @revision_id_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #7 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.hdac_device, ptr %5, i32 0, i32 9
  %7 = load i32, ptr %6, align 8
  %8 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.16, i32 noundef %7)
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @revision_id_store(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2, i32 noundef %3) #2 {
  %5 = alloca i32, align 4
  %6 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %7 = load ptr, ptr %6, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #10
  store i32 0, ptr %5, align 4, !annotation !8
  %8 = call i32 @_kstrtoul(ptr noundef %2, i32 noundef 0, ptr noundef nonnull %5) #10
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %4
  %11 = load i32, ptr %5, align 4
  %12 = getelementptr inbounds %struct.hdac_device, ptr %7, i32 0, i32 9
  store i32 %11, ptr %12, align 8
  br label %13

13:                                               ; preds = %10, %4
  %14 = phi i32 [ %3, %10 ], [ %8, %4 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #10
  ret i32 %14
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @afg_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #7 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.hdac_device, ptr %5, i32 0, i32 5
  %7 = load i16, ptr %6, align 4
  %8 = zext i16 %7 to i32
  %9 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.16, i32 noundef %8)
  ret i32 %9
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mfg_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #7 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.hdac_device, ptr %5, i32 0, i32 6
  %7 = load i16, ptr %6, align 2
  %8 = zext i16 %7 to i32
  %9 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.16, i32 noundef %8)
  ret i32 %9
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vendor_name_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #7 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.hdac_device, ptr %5, i32 0, i32 14
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  %9 = select i1 %8, ptr @.str.23, ptr %7
  %10 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.22, ptr noundef nonnull %9)
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @vendor_name_store(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2, i32 noundef %3) #2 {
  %5 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = tail call ptr @kstrndup(ptr noundef %2, i32 noundef 64, i32 noundef 3264) #10
  %8 = icmp eq ptr %7, null
  br i1 %8, label %16, label %9

9:                                                ; preds = %4
  %10 = tail call ptr @strchr(ptr noundef nonnull %7, i32 noundef 10) #10
  %11 = icmp eq ptr %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %9
  store i8 0, ptr %10, align 1
  br label %13

13:                                               ; preds = %12, %9
  %14 = getelementptr inbounds %struct.hdac_device, ptr %6, i32 0, i32 14
  %15 = load ptr, ptr %14, align 4
  tail call void @kfree(ptr noundef %15) #10
  store ptr %7, ptr %14, align 4
  br label %16

16:                                               ; preds = %13, %4
  %17 = phi i32 [ %3, %13 ], [ -12, %4 ]
  ret i32 %17
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @chip_name_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #7 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.hdac_device, ptr %5, i32 0, i32 15
  %7 = load ptr, ptr %6, align 8
  %8 = icmp eq ptr %7, null
  %9 = select i1 %8, ptr @.str.23, ptr %7
  %10 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.22, ptr noundef nonnull %9)
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @chip_name_store(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2, i32 noundef %3) #2 {
  %5 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = tail call ptr @kstrndup(ptr noundef %2, i32 noundef 64, i32 noundef 3264) #10
  %8 = icmp eq ptr %7, null
  br i1 %8, label %16, label %9

9:                                                ; preds = %4
  %10 = tail call ptr @strchr(ptr noundef nonnull %7, i32 noundef 10) #10
  %11 = icmp eq ptr %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %9
  store i8 0, ptr %10, align 1
  br label %13

13:                                               ; preds = %12, %9
  %14 = getelementptr inbounds %struct.hdac_device, ptr %6, i32 0, i32 15
  %15 = load ptr, ptr %14, align 8
  tail call void @kfree(ptr noundef %15) #10
  store ptr %7, ptr %14, align 8
  br label %16

16:                                               ; preds = %13, %4
  %17 = phi i32 [ %3, %13 ], [ -12, %4 ]
  ret i32 %17
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @modelname_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #7 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.hda_codec, ptr %5, i32 0, i32 6
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  %9 = select i1 %8, ptr @.str.23, ptr %7
  %10 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.22, ptr noundef nonnull %9)
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @modelname_store(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2, i32 noundef %3) #2 {
  %5 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = tail call ptr @kstrndup(ptr noundef %2, i32 noundef 64, i32 noundef 3264) #10
  %8 = icmp eq ptr %7, null
  br i1 %8, label %16, label %9

9:                                                ; preds = %4
  %10 = tail call ptr @strchr(ptr noundef nonnull %7, i32 noundef 10) #10
  %11 = icmp eq ptr %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %9
  store i8 0, ptr %10, align 1
  br label %13

13:                                               ; preds = %12, %9
  %14 = getelementptr inbounds %struct.hda_codec, ptr %6, i32 0, i32 6
  %15 = load ptr, ptr %14, align 4
  tail call void @kfree(ptr noundef %15) #10
  store ptr %7, ptr %14, align 4
  br label %16

16:                                               ; preds = %13, %4
  %17 = phi i32 [ %3, %13 ], [ -12, %4 ]
  ret i32 %17
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @init_pin_configs_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #2 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.hda_codec, ptr %5, i32 0, i32 23
  %7 = getelementptr inbounds %struct.hda_codec, ptr %5, i32 0, i32 26
  tail call void @mutex_lock(ptr noundef %7) #10
  %8 = getelementptr inbounds %struct.hda_codec, ptr %5, i32 0, i32 23, i32 4
  %9 = load i32, ptr %6, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %32, label %11

11:                                               ; preds = %3
  %12 = load ptr, ptr %8, align 4
  %13 = getelementptr inbounds %struct.hda_codec, ptr %5, i32 0, i32 23, i32 2
  br label %14

14:                                               ; preds = %14, %11
  %15 = phi i32 [ 0, %11 ], [ %24, %14 ]
  %16 = phi i32 [ 0, %11 ], [ %25, %14 ]
  %17 = phi ptr [ %12, %11 ], [ %29, %14 ]
  %18 = getelementptr i8, ptr %2, i32 %15
  %19 = load i16, ptr %17, align 4
  %20 = zext i16 %19 to i32
  %21 = getelementptr inbounds %struct.hda_pincfg, ptr %17, i32 0, i32 3
  %22 = load i32, ptr %21, align 4
  %23 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %18, ptr noundef nonnull @.str.27, i32 noundef %20, i32 noundef %22) #10
  %24 = add i32 %23, %15
  %25 = add nuw i32 %16, 1
  %26 = load ptr, ptr %8, align 4
  %27 = load i32, ptr %13, align 4
  %28 = mul i32 %27, %25
  %29 = getelementptr i8, ptr %26, i32 %28
  %30 = load i32, ptr %6, align 4
  %31 = icmp ult i32 %25, %30
  br i1 %31, label %14, label %32

32:                                               ; preds = %14, %3
  %33 = phi i32 [ 0, %3 ], [ %24, %14 ]
  tail call void @mutex_unlock(ptr noundef %7) #10
  ret i32 %33
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @driver_pin_configs_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #2 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.hda_codec, ptr %5, i32 0, i32 24
  %7 = getelementptr inbounds %struct.hda_codec, ptr %5, i32 0, i32 26
  tail call void @mutex_lock(ptr noundef %7) #10
  %8 = getelementptr inbounds %struct.hda_codec, ptr %5, i32 0, i32 24, i32 4
  %9 = load i32, ptr %6, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %32, label %11

11:                                               ; preds = %3
  %12 = load ptr, ptr %8, align 4
  %13 = getelementptr inbounds %struct.hda_codec, ptr %5, i32 0, i32 24, i32 2
  br label %14

14:                                               ; preds = %14, %11
  %15 = phi i32 [ 0, %11 ], [ %24, %14 ]
  %16 = phi i32 [ 0, %11 ], [ %25, %14 ]
  %17 = phi ptr [ %12, %11 ], [ %29, %14 ]
  %18 = getelementptr i8, ptr %2, i32 %15
  %19 = load i16, ptr %17, align 4
  %20 = zext i16 %19 to i32
  %21 = getelementptr inbounds %struct.hda_pincfg, ptr %17, i32 0, i32 3
  %22 = load i32, ptr %21, align 4
  %23 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %18, ptr noundef nonnull @.str.27, i32 noundef %20, i32 noundef %22) #10
  %24 = add i32 %23, %15
  %25 = add nuw i32 %16, 1
  %26 = load ptr, ptr %8, align 4
  %27 = load i32, ptr %13, align 4
  %28 = mul i32 %27, %25
  %29 = getelementptr i8, ptr %26, i32 %28
  %30 = load i32, ptr %6, align 4
  %31 = icmp ult i32 %25, %30
  br i1 %31, label %14, label %32

32:                                               ; preds = %14, %3
  %33 = phi i32 [ 0, %3 ], [ %24, %14 ]
  tail call void @mutex_unlock(ptr noundef %7) #10
  ret i32 %33
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @power_on_acct_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #2 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  tail call void @snd_hda_update_power_acct(ptr noundef %5) #10
  %6 = getelementptr inbounds %struct.hda_codec, ptr %5, i32 0, i32 31
  %7 = load i32, ptr %6, align 4
  %8 = tail call i32 @jiffies_to_msecs(i32 noundef %7) #10
  %9 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.30, i32 noundef %8)
  ret i32 %9
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_hda_update_power_acct(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_msecs(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @power_off_acct_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #2 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  tail call void @snd_hda_update_power_acct(ptr noundef %5) #10
  %6 = getelementptr inbounds %struct.hda_codec, ptr %5, i32 0, i32 32
  %7 = load i32, ptr %6, align 8
  %8 = tail call i32 @jiffies_to_msecs(i32 noundef %7) #10
  %9 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef nonnull @.str.30, i32 noundef %8)
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @init_verbs_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2) #2 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.hda_codec, ptr %5, i32 0, i32 26
  tail call void @mutex_lock(ptr noundef %6) #10
  %7 = getelementptr inbounds %struct.hda_codec, ptr %5, i32 0, i32 27
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %35, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.hda_codec, ptr %5, i32 0, i32 27, i32 4
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.hda_codec, ptr %5, i32 0, i32 27, i32 2
  br label %14

14:                                               ; preds = %14, %10
  %15 = phi i32 [ 0, %10 ], [ %27, %14 ]
  %16 = phi i32 [ 0, %10 ], [ %28, %14 ]
  %17 = phi ptr [ %12, %10 ], [ %32, %14 ]
  %18 = getelementptr i8, ptr %2, i32 %15
  %19 = sub i32 4096, %15
  %20 = load i16, ptr %17, align 4
  %21 = zext i16 %20 to i32
  %22 = getelementptr inbounds %struct.hda_verb, ptr %17, i32 0, i32 1
  %23 = load i32, ptr %22, align 4
  %24 = getelementptr inbounds %struct.hda_verb, ptr %17, i32 0, i32 2
  %25 = load i32, ptr %24, align 4
  %26 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %18, i32 noundef %19, ptr noundef nonnull @.str.33, i32 noundef %21, i32 noundef %23, i32 noundef %25) #10
  %27 = add i32 %26, %15
  %28 = add nuw i32 %16, 1
  %29 = load ptr, ptr %11, align 4
  %30 = load i32, ptr %13, align 4
  %31 = mul i32 %30, %28
  %32 = getelementptr i8, ptr %29, i32 %31
  %33 = load i32, ptr %7, align 4
  %34 = icmp ult i32 %28, %33
  br i1 %34, label %14, label %35

35:                                               ; preds = %14, %3
  %36 = phi i32 [ 0, %3 ], [ %27, %14 ]
  tail call void @mutex_unlock(ptr noundef %6) #10
  ret i32 %36
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @init_verbs_store(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readonly %2, i32 noundef %3) #2 {
  %5 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = tail call fastcc i32 @parse_init_verbs(ptr noundef %6, ptr noundef %2)
  %8 = icmp slt i32 %7, 0
  %9 = select i1 %8, i32 %7, i32 %3
  ret i32 %9
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @hints_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2) #2 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.hda_codec, ptr %5, i32 0, i32 26
  tail call void @mutex_lock(ptr noundef %6) #10
  %7 = getelementptr inbounds %struct.hda_codec, ptr %5, i32 0, i32 28
  %8 = load i32, ptr %7, align 8
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %32, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.hda_codec, ptr %5, i32 0, i32 28, i32 4
  %12 = load ptr, ptr %11, align 8
  %13 = getelementptr inbounds %struct.hda_codec, ptr %5, i32 0, i32 28, i32 2
  br label %14

14:                                               ; preds = %14, %10
  %15 = phi i32 [ 0, %10 ], [ %24, %14 ]
  %16 = phi i32 [ 0, %10 ], [ %25, %14 ]
  %17 = phi ptr [ %12, %10 ], [ %29, %14 ]
  %18 = getelementptr i8, ptr %2, i32 %15
  %19 = sub i32 4096, %15
  %20 = load ptr, ptr %17, align 4
  %21 = getelementptr inbounds %struct.hda_hint, ptr %17, i32 0, i32 1
  %22 = load ptr, ptr %21, align 4
  %23 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %18, i32 noundef %19, ptr noundef nonnull @.str.35, ptr noundef %20, ptr noundef %22) #10
  %24 = add i32 %23, %15
  %25 = add nuw i32 %16, 1
  %26 = load ptr, ptr %11, align 4
  %27 = load i32, ptr %13, align 4
  %28 = mul i32 %27, %25
  %29 = getelementptr i8, ptr %26, i32 %28
  %30 = load i32, ptr %7, align 8
  %31 = icmp ult i32 %25, %30
  br i1 %31, label %14, label %32

32:                                               ; preds = %14, %3
  %33 = phi i32 [ 0, %3 ], [ %24, %14 ]
  tail call void @mutex_unlock(ptr noundef %6) #10
  ret i32 %33
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @hints_store(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2, i32 noundef %3) #2 {
  %5 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = tail call fastcc i32 @parse_hints(ptr noundef %6, ptr noundef %2)
  %8 = icmp slt i32 %7, 0
  %9 = select i1 %8, i32 %7, i32 %3
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @user_pin_configs_show(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #2 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.hda_codec, ptr %5, i32 0, i32 29
  %7 = getelementptr inbounds %struct.hda_codec, ptr %5, i32 0, i32 26
  tail call void @mutex_lock(ptr noundef %7) #10
  %8 = getelementptr inbounds %struct.hda_codec, ptr %5, i32 0, i32 29, i32 4
  %9 = load i32, ptr %6, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %32, label %11

11:                                               ; preds = %3
  %12 = load ptr, ptr %8, align 4
  %13 = getelementptr inbounds %struct.hda_codec, ptr %5, i32 0, i32 29, i32 2
  br label %14

14:                                               ; preds = %14, %11
  %15 = phi i32 [ 0, %11 ], [ %24, %14 ]
  %16 = phi i32 [ 0, %11 ], [ %25, %14 ]
  %17 = phi ptr [ %12, %11 ], [ %29, %14 ]
  %18 = getelementptr i8, ptr %2, i32 %15
  %19 = load i16, ptr %17, align 4
  %20 = zext i16 %19 to i32
  %21 = getelementptr inbounds %struct.hda_pincfg, ptr %17, i32 0, i32 3
  %22 = load i32, ptr %21, align 4
  %23 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %18, ptr noundef nonnull @.str.27, i32 noundef %20, i32 noundef %22) #10
  %24 = add i32 %23, %15
  %25 = add nuw i32 %16, 1
  %26 = load ptr, ptr %8, align 4
  %27 = load i32, ptr %13, align 4
  %28 = mul i32 %27, %25
  %29 = getelementptr i8, ptr %26, i32 %28
  %30 = load i32, ptr %6, align 4
  %31 = icmp ult i32 %25, %30
  br i1 %31, label %14, label %32

32:                                               ; preds = %14, %3
  %33 = phi i32 [ 0, %3 ], [ %24, %14 ]
  tail call void @mutex_unlock(ptr noundef %7) #10
  ret i32 %33
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @user_pin_configs_store(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readonly %2, i32 noundef %3) #2 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %8 = load ptr, ptr %7, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #10
  store i32 0, ptr %5, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #10
  store i32 0, ptr %6, align 4, !annotation !8
  %9 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %2, ptr noundef nonnull @.str.14, ptr noundef nonnull %5, ptr noundef nonnull %6) #10
  %10 = icmp ne i32 %9, 2
  %11 = load i32, ptr %5, align 4
  %12 = icmp eq i32 %11, 0
  %13 = select i1 %10, i1 true, i1 %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #10
  br label %23

15:                                               ; preds = %4
  %16 = getelementptr inbounds %struct.hda_codec, ptr %8, i32 0, i32 26
  call void @mutex_lock(ptr noundef %16) #10
  %17 = getelementptr inbounds %struct.hda_codec, ptr %8, i32 0, i32 29
  %18 = load i32, ptr %5, align 4
  %19 = trunc i32 %18 to i16
  %20 = load i32, ptr %6, align 4
  %21 = call i32 @snd_hda_add_pincfg(ptr noundef %8, ptr noundef %17, i16 noundef zeroext %19, i32 noundef %20) #10
  call void @mutex_unlock(ptr noundef %16) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #10
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %15, %14
  %24 = phi i32 [ -22, %14 ], [ %21, %15 ]
  br label %25

25:                                               ; preds = %23, %15
  %26 = phi i32 [ %24, %23 ], [ %3, %15 ]
  ret i32 %26
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @reconfig_store(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readonly %2, i32 noundef %3) #2 {
  %5 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = load i8, ptr %2, align 1
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %28, label %9

9:                                                ; preds = %4
  %10 = tail call i32 @snd_hdac_power_up(ptr noundef %6) #10
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %6, ptr noundef nonnull @.str.38) #11
  %11 = tail call i32 @snd_hda_codec_reset(ptr noundef %6) #10
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.39) #11
  br label %17

14:                                               ; preds = %9
  %15 = tail call i32 @device_reprobe(ptr noundef %6) #10
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %14, %13
  %18 = phi i32 [ %15, %14 ], [ %11, %13 ]
  %19 = tail call i32 @snd_hdac_power_down(ptr noundef %6) #10
  br label %26

20:                                               ; preds = %14
  %21 = getelementptr inbounds %struct.hda_codec, ptr %6, i32 0, i32 2
  %22 = load ptr, ptr %21, align 4
  %23 = tail call i32 @snd_card_register(ptr noundef %22) #10
  %24 = tail call i32 @snd_hdac_power_down(ptr noundef %6) #10
  %25 = icmp slt i32 %23, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %20, %17
  %27 = phi i32 [ %18, %17 ], [ %23, %20 ]
  br label %28

28:                                               ; preds = %26, %20, %4
  %29 = phi i32 [ %27, %26 ], [ %3, %20 ], [ %3, %4 ]
  ret i32 %29
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hdac_power_up(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hda_codec_reset(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_reprobe(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_card_register(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hdac_power_down(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clear_store(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readonly %2, i32 noundef %3) #2 {
  %5 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = load i8, ptr %2, align 1
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %35, label %9

9:                                                ; preds = %4
  %10 = tail call i32 @snd_hda_codec_reset(ptr noundef %6) #10
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %34, label %12

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.hda_codec, ptr %6, i32 0, i32 27
  tail call void @snd_array_free(ptr noundef %13) #10
  %14 = getelementptr inbounds %struct.hda_codec, ptr %6, i32 0, i32 28
  %15 = load i32, ptr %14, align 8
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %32, label %17

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.hda_codec, ptr %6, i32 0, i32 28, i32 4
  %19 = load ptr, ptr %18, align 8
  %20 = getelementptr inbounds %struct.hda_codec, ptr %6, i32 0, i32 28, i32 2
  br label %21

21:                                               ; preds = %21, %17
  %22 = phi i32 [ 0, %17 ], [ %25, %21 ]
  %23 = phi ptr [ %19, %17 ], [ %29, %21 ]
  %24 = load ptr, ptr %23, align 4
  tail call void @kfree(ptr noundef %24) #10
  %25 = add nuw i32 %22, 1
  %26 = load ptr, ptr %18, align 4
  %27 = load i32, ptr %20, align 4
  %28 = mul i32 %27, %25
  %29 = getelementptr i8, ptr %26, i32 %28
  %30 = load i32, ptr %14, align 8
  %31 = icmp ult i32 %25, %30
  br i1 %31, label %21, label %32

32:                                               ; preds = %21, %12
  tail call void @snd_array_free(ptr noundef %14) #10
  %33 = getelementptr inbounds %struct.hda_codec, ptr %6, i32 0, i32 29
  tail call void @snd_array_free(ptr noundef %33) #10
  br label %35

34:                                               ; preds = %9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.41) #11
  br label %35

35:                                               ; preds = %34, %32, %4
  %36 = phi i32 [ %10, %34 ], [ %3, %4 ], [ %3, %32 ]
  ret i32 %36
}

attributes #0 = { nofree nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nofree nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nounwind }
attributes #11 = { cold nounwind }

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
