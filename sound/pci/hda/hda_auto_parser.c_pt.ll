; ModuleID = '/llk/IR/sound/pci/hda/hda_auto_parser.c_pt.bc'
source_filename = "../sound/pci/hda/hda_auto_parser.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_hda_parse_pin_defcfg:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_hda_parse_pin_defcfg\22\09\09\09\09\09"
module asm "__kstrtabns_snd_hda_parse_pin_defcfg:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_hda_get_input_pin_attr:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_hda_get_input_pin_attr\22\09\09\09\09\09"
module asm "__kstrtabns_snd_hda_get_input_pin_attr:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_hda_get_autocfg_input_label:\09\09\09\09\09"
module asm "\09.asciz \09\22hda_get_autocfg_input_label\22\09\09\09\09\09"
module asm "__kstrtabns_hda_get_autocfg_input_label:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_hda_get_pin_label:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_hda_get_pin_label\22\09\09\09\09\09"
module asm "__kstrtabns_snd_hda_get_pin_label:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_hda_add_verbs:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_hda_add_verbs\22\09\09\09\09\09"
module asm "__kstrtabns_snd_hda_add_verbs:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_hda_apply_verbs:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_hda_apply_verbs\22\09\09\09\09\09"
module asm "__kstrtabns_snd_hda_apply_verbs:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_hda_apply_pincfgs:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_hda_apply_pincfgs\22\09\09\09\09\09"
module asm "__kstrtabns_snd_hda_apply_pincfgs:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_hda_apply_fixup:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_hda_apply_fixup\22\09\09\09\09\09"
module asm "__kstrtabns_snd_hda_apply_fixup:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_hda_pick_pin_fixup:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_hda_pick_pin_fixup\22\09\09\09\09\09"
module asm "__kstrtabns_snd_hda_pick_pin_fixup:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_hda_pick_fixup:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_hda_pick_fixup\22\09\09\09\09\09"
module asm "__kstrtabns_snd_hda_pick_fixup:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.auto_out_pin = type { i16, i16 }
%struct.hdac_device = type { %struct.device, i32, ptr, i32, %struct.list_head, i16, i16, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, i32, i16, i16, %struct.atomic_t, %struct.mutex, ptr, ptr, %struct.mutex, %struct.snd_array, i8 }
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
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.snd_array = type { i32, i32, i32, i32, ptr }
%struct.hda_codec = type { %struct.hdac_device, ptr, ptr, i32, i32, ptr, ptr, %struct.hda_codec_ops, %struct.list_head, %struct.refcount_struct, %struct.wait_queue_head, ptr, ptr, i32, ptr, %struct.snd_array, %struct.snd_array, %struct.list_head, %struct.mutex, %struct.mutex, %struct.snd_array, i32, ptr, %struct.snd_array, %struct.snd_array, %struct.snd_array, %struct.mutex, %struct.snd_array, %struct.snd_array, %struct.snd_array, i24, i32, i32, i32, ptr, ptr, %struct.snd_array, i32, %struct.delayed_work, i32, i32, ptr, ptr, %struct.snd_array }
%struct.hda_codec_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.auto_pin_cfg = type { i32, [5 x i16], i32, [5 x i16], i32, i32, [5 x i16], i32, [18 x %struct.auto_pin_cfg_item], i32, [2 x i16], i16, i16, [2 x i32], i32 }
%struct.auto_pin_cfg_item = type { i16, i32, i8 }
%struct.hda_pintbl = type { i16, i32 }
%struct.hda_fixup = type { i32, i8, i32, %union.anon.67 }
%union.anon.67 = type { ptr }
%struct.snd_hda_pin_quirk = type { i32, i16, ptr, i32 }
%struct.hda_pincfg = type { i16, i8, i8, i32 }
%struct.hda_model_fixup = type { i32, ptr }
%struct.hda_bus = type { %struct.hdac_bus, ptr, ptr, ptr, %struct.mutex, [8 x i32], i8, i32, i32 }
%struct.hdac_bus = type { ptr, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, i32, [16 x ptr], [128 x i32], i32, i32, %struct.work_struct, i32, i32, %struct.hdac_rb, %struct.hdac_rb, [8 x i32], %struct.wait_queue_head, %struct.snd_dma_buffer, %struct.snd_dma_buffer, i32, %struct.list_head, i16, i32, i32, i32, %struct.spinlock, %struct.mutex, %struct.mutex, ptr, i32, i32, i32, i32, %struct.list_head, i8, i32 }
%struct.hdac_rb = type { ptr, i32, i16, i16, [8 x i32], [8 x i32] }
%struct.snd_dma_buffer = type { %struct.snd_dma_device, ptr, i32, i32, ptr }
%struct.snd_dma_device = type { i32, i32, i8, ptr }
%struct.snd_pci_quirk = type { i16, i16, i16, i32 }

@.str = private unnamed_addr constant [13 x i8] c"parser_flags\00", align 1
@.str.1 = private unnamed_addr constant [54 x i8] c"ignore pin 0x%x with mismatching assoc# 0x%x vs 0x%x\0A\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"ignore pin 0x%x, too many assigned pins\0A\00", align 1
@.str.3 = private unnamed_addr constant [68 x i8] c"autoconfig for %s: line_outs=%d (0x%x/0x%x/0x%x/0x%x/0x%x) type:%s\0A\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"hp\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"speaker\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"line\00", align 1
@.str.7 = private unnamed_addr constant [47 x i8] c"   speaker_outs=%d (0x%x/0x%x/0x%x/0x%x/0x%x)\0A\00", align 1
@.str.8 = private unnamed_addr constant [42 x i8] c"   hp_outs=%d (0x%x/0x%x/0x%x/0x%x/0x%x)\0A\00", align 1
@.str.9 = private unnamed_addr constant [24 x i8] c"   mono: mono_out=0x%x\0A\00", align 1
@.str.10 = private unnamed_addr constant [22 x i8] c"   dig-out=0x%x/0x%x\0A\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"   inputs:\0A\00", align 1
@.str.12 = private unnamed_addr constant [14 x i8] c"     %s=0x%x\0A\00", align 1
@.str.13 = private unnamed_addr constant [16 x i8] c"   dig-in=0x%x\0A\00", align 1
@__kstrtab_snd_hda_parse_pin_defcfg = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_hda_parse_pin_defcfg = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_hda_parse_pin_defcfg = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_hda_parse_pin_defcfg to i32), ptr @__kstrtab_snd_hda_parse_pin_defcfg, ptr @__kstrtabns_snd_hda_parse_pin_defcfg }, section "___ksymtab_gpl+snd_hda_parse_pin_defcfg", align 4
@__kstrtab_snd_hda_get_input_pin_attr = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_hda_get_input_pin_attr = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_hda_get_input_pin_attr = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_hda_get_input_pin_attr to i32), ptr @__kstrtab_snd_hda_get_input_pin_attr, ptr @__kstrtabns_snd_hda_get_input_pin_attr }, section "___ksymtab_gpl+snd_hda_get_input_pin_attr", align 4
@__kstrtab_hda_get_autocfg_input_label = external dso_local constant [0 x i8], align 1
@__kstrtabns_hda_get_autocfg_input_label = external dso_local constant [0 x i8], align 1
@__ksymtab_hda_get_autocfg_input_label = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @hda_get_autocfg_input_label to i32), ptr @__kstrtab_hda_get_autocfg_input_label, ptr @__kstrtabns_hda_get_autocfg_input_label }, section "___ksymtab_gpl+hda_get_autocfg_input_label", align 4
@.str.14 = private unnamed_addr constant [9 x i8] c"Line Out\00", align 1
@.str.15 = private unnamed_addr constant [8 x i8] c"Speaker\00", align 1
@.str.16 = private unnamed_addr constant [10 x i8] c"Headphone\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"HDMI\00", align 1
@.str.18 = private unnamed_addr constant [6 x i8] c"SPDIF\00", align 1
@__kstrtab_snd_hda_get_pin_label = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_hda_get_pin_label = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_hda_get_pin_label = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_hda_get_pin_label to i32), ptr @__kstrtab_snd_hda_get_pin_label, ptr @__kstrtabns_snd_hda_get_pin_label }, section "___ksymtab_gpl+snd_hda_get_pin_label", align 4
@__kstrtab_snd_hda_add_verbs = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_hda_add_verbs = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_hda_add_verbs = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_hda_add_verbs to i32), ptr @__kstrtab_snd_hda_add_verbs, ptr @__kstrtabns_snd_hda_add_verbs }, section "___ksymtab_gpl+snd_hda_add_verbs", align 4
@__kstrtab_snd_hda_apply_verbs = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_hda_apply_verbs = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_hda_apply_verbs = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_hda_apply_verbs to i32), ptr @__kstrtab_snd_hda_apply_verbs, ptr @__kstrtabns_snd_hda_apply_verbs }, section "___ksymtab_gpl+snd_hda_apply_verbs", align 4
@__kstrtab_snd_hda_apply_pincfgs = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_hda_apply_pincfgs = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_hda_apply_pincfgs = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_hda_apply_pincfgs to i32), ptr @__kstrtab_snd_hda_apply_pincfgs, ptr @__kstrtabns_snd_hda_apply_pincfgs }, section "___ksymtab_gpl+snd_hda_apply_pincfgs", align 4
@__kstrtab_snd_hda_apply_fixup = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_hda_apply_fixup = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_hda_apply_fixup = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_hda_apply_fixup to i32), ptr @__kstrtab_snd_hda_apply_fixup, ptr @__kstrtabns_snd_hda_apply_fixup }, section "___ksymtab_gpl+snd_hda_apply_fixup", align 4
@__kstrtab_snd_hda_pick_pin_fixup = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_hda_pick_pin_fixup = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_hda_pick_pin_fixup = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_hda_pick_pin_fixup to i32), ptr @__kstrtab_snd_hda_pick_pin_fixup, ptr @__kstrtabns_snd_hda_pick_pin_fixup }, section "___ksymtab_gpl+snd_hda_pick_pin_fixup", align 4
@.str.19 = private unnamed_addr constant [8 x i8] c"nofixup\00", align 1
@.str.20 = private unnamed_addr constant [10 x i8] c"%04x:%04x\00", align 1
@__kstrtab_snd_hda_pick_fixup = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_hda_pick_fixup = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_hda_pick_fixup = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_hda_pick_fixup to i32), ptr @__kstrtab_snd_hda_pick_fixup, ptr @__kstrtabns_snd_hda_pick_fixup }, section "___ksymtab_gpl+snd_hda_pick_fixup", align 4
@hda_get_input_pin_label.mic_names = internal unnamed_addr constant [5 x ptr] [ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28], align 4
@.str.24 = private unnamed_addr constant [13 x i8] c"Internal Mic\00", align 1
@.str.25 = private unnamed_addr constant [9 x i8] c"Dock Mic\00", align 1
@.str.26 = private unnamed_addr constant [4 x i8] c"Mic\00", align 1
@.str.27 = private unnamed_addr constant [9 x i8] c"Rear Mic\00", align 1
@.str.28 = private unnamed_addr constant [10 x i8] c"Front Mic\00", align 1
@.str.29 = private unnamed_addr constant [12 x i8] c"Headset Mic\00", align 1
@.str.30 = private unnamed_addr constant [14 x i8] c"Headphone Mic\00", align 1
@.str.31 = private unnamed_addr constant [5 x i8] c"None\00", align 1
@.str.32 = private unnamed_addr constant [5 x i8] c"Line\00", align 1
@.str.33 = private unnamed_addr constant [10 x i8] c"Dock Line\00", align 1
@.str.34 = private unnamed_addr constant [4 x i8] c"Aux\00", align 1
@.str.35 = private unnamed_addr constant [3 x i8] c"CD\00", align 1
@.str.36 = private unnamed_addr constant [9 x i8] c"SPDIF In\00", align 1
@.str.37 = private unnamed_addr constant [11 x i8] c"Digital In\00", align 1
@.str.38 = private unnamed_addr constant [5 x i8] c"Misc\00", align 1
@.str.39 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.40 = private unnamed_addr constant [7 x i8] c"%s%s%s\00", align 1
@.str.41 = private unnamed_addr constant [6 x i8] c"Dock \00", align 1
@.str.42 = private unnamed_addr constant [7 x i8] c"Front \00", align 1
@check_output_sfx.channel_sfx = internal unnamed_addr constant [4 x ptr] [ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46], align 4
@.str.43 = private unnamed_addr constant [7 x i8] c" Front\00", align 1
@.str.44 = private unnamed_addr constant [10 x i8] c" Surround\00", align 1
@.str.45 = private unnamed_addr constant [6 x i8] c" CLFE\00", align 1
@.str.46 = private unnamed_addr constant [6 x i8] c" Side\00", align 1
@.str.47 = private unnamed_addr constant [27 x i8] c"%s: Invalid fixup type %d\0A\00", align 1
@llvm.compiler.used = appending global [10 x ptr] [ptr @__ksymtab_hda_get_autocfg_input_label, ptr @__ksymtab_snd_hda_add_verbs, ptr @__ksymtab_snd_hda_apply_fixup, ptr @__ksymtab_snd_hda_apply_pincfgs, ptr @__ksymtab_snd_hda_apply_verbs, ptr @__ksymtab_snd_hda_get_input_pin_attr, ptr @__ksymtab_snd_hda_get_pin_label, ptr @__ksymtab_snd_hda_parse_pin_defcfg, ptr @__ksymtab_snd_hda_pick_fixup, ptr @__ksymtab_snd_hda_pick_pin_fixup], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @snd_hda_parse_pin_defcfg(ptr noundef %0, ptr noundef %1, ptr noundef readonly %2, i32 noundef %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca [5 x %struct.auto_out_pin], align 2
  %7 = alloca [5 x %struct.auto_out_pin], align 2
  %8 = alloca [5 x %struct.auto_out_pin], align 2
  %9 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %6) #11
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %7) #11
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %8) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #11
  store i32 0, ptr %9, align 4, !annotation !8
  %10 = call i32 @snd_hda_get_int_hint(ptr noundef %0, ptr noundef nonnull @.str, ptr noundef nonnull %9) #11
  %11 = icmp eq i32 %10, 0
  %12 = load i32, ptr %9, align 4
  %13 = select i1 %11, i32 %12, i32 %3
  call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(296) %1, i8 0, i32 296, i1 false)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 2 dereferenceable(20) %6, i8 0, i32 20, i1 false)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 2 dereferenceable(20) %7, i8 0, i32 20, i1 false)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 2 dereferenceable(20) %8, i8 0, i32 20, i1 false)
  %14 = getelementptr inbounds %struct.hdac_device, ptr %0, i32 0, i32 18
  %15 = load i16, ptr %14, align 4
  %16 = getelementptr inbounds %struct.hdac_device, ptr %0, i32 0, i32 19
  %17 = load i16, ptr %16, align 2
  %18 = icmp ult i16 %15, %17
  br i1 %18, label %19, label %228

19:                                               ; preds = %4
  %20 = getelementptr inbounds %struct.hdac_device, ptr %0, i32 0, i32 17
  %21 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 14
  %22 = icmp eq ptr %2, null
  %23 = getelementptr inbounds %struct.auto_pin_cfg, ptr %1, i32 0, i32 11
  %24 = getelementptr inbounds %struct.auto_pin_cfg, ptr %1, i32 0, i32 14
  %25 = getelementptr inbounds %struct.auto_pin_cfg, ptr %1, i32 0, i32 9
  %26 = getelementptr inbounds %struct.auto_pin_cfg, ptr %1, i32 0, i32 7
  %27 = getelementptr inbounds %struct.auto_pin_cfg, ptr %1, i32 0, i32 4
  %28 = getelementptr inbounds %struct.auto_pin_cfg, ptr %1, i32 0, i32 2
  %29 = getelementptr inbounds %struct.auto_pin_cfg, ptr %1, i32 0, i32 12
  %30 = zext i16 %15 to i32
  br label %31

31:                                               ; preds = %226, %19
  %32 = phi i16 [ %15, %19 ], [ %227, %226 ]
  %33 = phi i32 [ %30, %19 ], [ %222, %226 ]
  %34 = phi i16 [ 0, %19 ], [ %221, %226 ]
  %35 = zext i16 %32 to i32
  %36 = icmp ult i32 %33, %35
  br i1 %36, label %220, label %37

37:                                               ; preds = %31
  %38 = load i32, ptr %20, align 8
  %39 = add i32 %38, %35
  %40 = icmp ugt i32 %39, %33
  br i1 %40, label %41, label %220

41:                                               ; preds = %37
  %42 = load ptr, ptr %21, align 4
  %43 = sub nsw i32 %33, %35
  %44 = getelementptr i32, ptr %42, i32 %43
  %45 = load i32, ptr %44, align 4
  %46 = and i32 %45, 15728640
  %47 = icmp eq i32 %46, 4194304
  br i1 %47, label %48, label %220

48:                                               ; preds = %41
  br i1 %22, label %61, label %49

49:                                               ; preds = %48
  %50 = load i16, ptr %2, align 2
  %51 = icmp eq i16 %50, 0
  br i1 %51, label %61, label %56

52:                                               ; preds = %56
  %53 = getelementptr i16, ptr %58, i32 1
  %54 = load i16, ptr %53, align 2
  %55 = icmp eq i16 %54, 0
  br i1 %55, label %61, label %56

56:                                               ; preds = %52, %49
  %57 = phi i16 [ %54, %52 ], [ %50, %49 ]
  %58 = phi ptr [ %53, %52 ], [ %2, %49 ]
  %59 = zext i16 %57 to i32
  %60 = icmp eq i32 %33, %59
  br i1 %60, label %220, label %52

61:                                               ; preds = %52, %49, %48
  %62 = trunc i32 %33 to i16
  %63 = call i32 @snd_hda_codec_get_pincfg(ptr noundef %0, i16 noundef zeroext %62) #11
  %64 = and i32 %63, -1073741824
  %65 = icmp eq i32 %64, 1073741824
  br i1 %65, label %220, label %66

66:                                               ; preds = %61
  %67 = lshr i32 %63, 24
  %68 = trunc i32 %67 to i16
  %69 = and i16 %68, 63
  %70 = lshr i32 %63, 20
  %71 = trunc i32 %70 to i16
  %72 = and i16 %71, 15
  %73 = icmp eq i16 %72, 0
  %74 = icmp slt i32 %63, 0
  %75 = select i1 %73, i1 %74, i1 false
  %76 = zext i16 %72 to i32
  %77 = select i1 %75, i32 1, i32 %76
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #11
  store i32 0, ptr %5, align 4, !annotation !8
  %78 = call i32 @_snd_hdac_read_parm(ptr noundef %0, i16 noundef zeroext %62, i32 noundef 12, ptr noundef nonnull %5) #11
  %79 = load i32, ptr %5, align 4
  %80 = icmp sgt i32 %78, -1
  %81 = select i1 %80, i32 %79, i32 -1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #11
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %90, label %83

83:                                               ; preds = %66
  switch i32 %77, label %84 [
    i32 0, label %87
    i32 1, label %87
    i32 2, label %87
    i32 4, label %87
    i32 5, label %87
  ]

84:                                               ; preds = %83
  %85 = and i32 %81, 32
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %220, label %90

87:                                               ; preds = %83, %83, %83, %83, %83
  %88 = and i32 %81, 16
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %220, label %90

90:                                               ; preds = %87, %84, %66
  switch i32 %77, label %220 [
    i32 0, label %91
    i32 1, label %120
    i32 2, label %130
    i32 10, label %140
    i32 8, label %156
    i32 3, label %172
    i32 9, label %188
    i32 4, label %204
    i32 5, label %204
    i32 12, label %216
    i32 13, label %216
  ]

91:                                               ; preds = %90
  %92 = trunc i32 %63 to i16
  %93 = and i16 %92, 15
  %94 = lshr i16 %92, 4
  %95 = and i16 %94, 15
  %96 = and i32 %45, 1
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %98, label %102

98:                                               ; preds = %91
  %99 = load i16, ptr %29, align 2
  %100 = icmp eq i16 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %98
  store i16 %62, ptr %29, align 2
  br label %102

102:                                              ; preds = %101, %98, %91
  %103 = icmp eq i16 %95, 0
  br i1 %103, label %220, label %104

104:                                              ; preds = %102
  %105 = icmp eq i16 %34, 0
  br i1 %105, label %111, label %106

106:                                              ; preds = %104
  %107 = icmp eq i16 %34, %95
  br i1 %107, label %111, label %108

108:                                              ; preds = %106
  %109 = zext i16 %95 to i32
  %110 = zext i16 %34 to i32
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %0, ptr noundef nonnull @.str.1, i32 noundef %33, i32 noundef %109, i32 noundef %110) #12
  br label %220

111:                                              ; preds = %106, %104
  %112 = phi i16 [ %34, %106 ], [ %95, %104 ]
  %113 = load i32, ptr %1, align 4
  %114 = icmp ugt i32 %113, 4
  br i1 %114, label %115, label %116

115:                                              ; preds = %111
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %0, ptr noundef nonnull @.str.2, i32 noundef %33) #12
  br label %220

116:                                              ; preds = %111
  %117 = getelementptr [5 x %struct.auto_out_pin], ptr %6, i32 0, i32 %113
  store i16 %62, ptr %117, align 2
  %118 = getelementptr [5 x %struct.auto_out_pin], ptr %6, i32 0, i32 %113, i32 1
  store i16 %93, ptr %118, align 2
  %119 = add nuw nsw i32 %113, 1
  store i32 %119, ptr %1, align 4
  br label %220

120:                                              ; preds = %90
  %121 = load i32, ptr %28, align 4
  %122 = icmp ugt i32 %121, 4
  br i1 %122, label %123, label %124

123:                                              ; preds = %120
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %0, ptr noundef nonnull @.str.2, i32 noundef %33) #12
  br label %220

124:                                              ; preds = %120
  %125 = getelementptr [5 x %struct.auto_out_pin], ptr %7, i32 0, i32 %121
  store i16 %62, ptr %125, align 2
  %126 = trunc i32 %63 to i16
  %127 = and i16 %126, 255
  %128 = getelementptr [5 x %struct.auto_out_pin], ptr %7, i32 0, i32 %121, i32 1
  store i16 %127, ptr %128, align 2
  %129 = add nuw nsw i32 %121, 1
  store i32 %129, ptr %28, align 4
  br label %220

130:                                              ; preds = %90
  %131 = load i32, ptr %27, align 4
  %132 = icmp ugt i32 %131, 4
  br i1 %132, label %133, label %134

133:                                              ; preds = %130
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %0, ptr noundef nonnull @.str.2, i32 noundef %33) #12
  br label %220

134:                                              ; preds = %130
  %135 = getelementptr [5 x %struct.auto_out_pin], ptr %8, i32 0, i32 %131
  store i16 %62, ptr %135, align 2
  %136 = trunc i32 %63 to i16
  %137 = and i16 %136, 255
  %138 = getelementptr [5 x %struct.auto_out_pin], ptr %8, i32 0, i32 %131, i32 1
  store i16 %137, ptr %138, align 2
  %139 = add nuw nsw i32 %131, 1
  store i32 %139, ptr %27, align 4
  br label %220

140:                                              ; preds = %90
  %141 = load i32, ptr %26, align 4
  %142 = icmp slt i32 %141, 18
  br i1 %142, label %143, label %220

143:                                              ; preds = %140
  %144 = getelementptr %struct.auto_pin_cfg, ptr %1, i32 0, i32 8, i32 %141
  store i16 %62, ptr %144, align 4
  %145 = load i32, ptr %26, align 4
  %146 = getelementptr %struct.auto_pin_cfg, ptr %1, i32 0, i32 8, i32 %145, i32 1
  store i32 0, ptr %146, align 4
  %147 = call zeroext i1 @snd_hda_check_amp_caps(ptr noundef %0, i16 noundef zeroext %62, i32 noundef 0, i32 noundef 32512) #11
  %148 = load i32, ptr %26, align 4
  %149 = getelementptr %struct.auto_pin_cfg, ptr %1, i32 0, i32 8, i32 %148, i32 2
  %150 = load i8, ptr %149, align 4
  %151 = select i1 %147, i8 4, i8 0
  %152 = and i8 %150, -5
  %153 = or i8 %152, %151
  store i8 %153, ptr %149, align 4
  %154 = load i32, ptr %26, align 4
  %155 = add i32 %154, 1
  store i32 %155, ptr %26, align 4
  br label %220

156:                                              ; preds = %90
  %157 = load i32, ptr %26, align 4
  %158 = icmp slt i32 %157, 18
  br i1 %158, label %159, label %220

159:                                              ; preds = %156
  %160 = getelementptr %struct.auto_pin_cfg, ptr %1, i32 0, i32 8, i32 %157
  store i16 %62, ptr %160, align 4
  %161 = load i32, ptr %26, align 4
  %162 = getelementptr %struct.auto_pin_cfg, ptr %1, i32 0, i32 8, i32 %161, i32 1
  store i32 1, ptr %162, align 4
  %163 = call zeroext i1 @snd_hda_check_amp_caps(ptr noundef %0, i16 noundef zeroext %62, i32 noundef 0, i32 noundef 32512) #11
  %164 = load i32, ptr %26, align 4
  %165 = getelementptr %struct.auto_pin_cfg, ptr %1, i32 0, i32 8, i32 %164, i32 2
  %166 = load i8, ptr %165, align 4
  %167 = select i1 %163, i8 4, i8 0
  %168 = and i8 %166, -5
  %169 = or i8 %168, %167
  store i8 %169, ptr %165, align 4
  %170 = load i32, ptr %26, align 4
  %171 = add i32 %170, 1
  store i32 %171, ptr %26, align 4
  br label %220

172:                                              ; preds = %90
  %173 = load i32, ptr %26, align 4
  %174 = icmp slt i32 %173, 18
  br i1 %174, label %175, label %220

175:                                              ; preds = %172
  %176 = getelementptr %struct.auto_pin_cfg, ptr %1, i32 0, i32 8, i32 %173
  store i16 %62, ptr %176, align 4
  %177 = load i32, ptr %26, align 4
  %178 = getelementptr %struct.auto_pin_cfg, ptr %1, i32 0, i32 8, i32 %177, i32 1
  store i32 2, ptr %178, align 4
  %179 = call zeroext i1 @snd_hda_check_amp_caps(ptr noundef %0, i16 noundef zeroext %62, i32 noundef 0, i32 noundef 32512) #11
  %180 = load i32, ptr %26, align 4
  %181 = getelementptr %struct.auto_pin_cfg, ptr %1, i32 0, i32 8, i32 %180, i32 2
  %182 = load i8, ptr %181, align 4
  %183 = select i1 %179, i8 4, i8 0
  %184 = and i8 %182, -5
  %185 = or i8 %184, %183
  store i8 %185, ptr %181, align 4
  %186 = load i32, ptr %26, align 4
  %187 = add i32 %186, 1
  store i32 %187, ptr %26, align 4
  br label %220

188:                                              ; preds = %90
  %189 = load i32, ptr %26, align 4
  %190 = icmp slt i32 %189, 18
  br i1 %190, label %191, label %220

191:                                              ; preds = %188
  %192 = getelementptr %struct.auto_pin_cfg, ptr %1, i32 0, i32 8, i32 %189
  store i16 %62, ptr %192, align 4
  %193 = load i32, ptr %26, align 4
  %194 = getelementptr %struct.auto_pin_cfg, ptr %1, i32 0, i32 8, i32 %193, i32 1
  store i32 3, ptr %194, align 4
  %195 = call zeroext i1 @snd_hda_check_amp_caps(ptr noundef %0, i16 noundef zeroext %62, i32 noundef 0, i32 noundef 32512) #11
  %196 = load i32, ptr %26, align 4
  %197 = getelementptr %struct.auto_pin_cfg, ptr %1, i32 0, i32 8, i32 %196, i32 2
  %198 = load i8, ptr %197, align 4
  %199 = select i1 %195, i8 4, i8 0
  %200 = and i8 %198, -5
  %201 = or i8 %200, %199
  store i8 %201, ptr %197, align 4
  %202 = load i32, ptr %26, align 4
  %203 = add i32 %202, 1
  store i32 %203, ptr %26, align 4
  br label %220

204:                                              ; preds = %90, %90
  %205 = load i32, ptr %25, align 4
  %206 = icmp ugt i32 %205, 1
  br i1 %206, label %207, label %208

207:                                              ; preds = %204
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %0, ptr noundef nonnull @.str.2, i32 noundef %33) #12
  br label %220

208:                                              ; preds = %204
  %209 = getelementptr %struct.auto_pin_cfg, ptr %1, i32 0, i32 10, i32 %205
  store i16 %62, ptr %209, align 2
  %210 = icmp eq i16 %69, 24
  %211 = select i1 %210, i32 2, i32 1
  %212 = load i32, ptr %25, align 4
  %213 = getelementptr %struct.auto_pin_cfg, ptr %1, i32 0, i32 13, i32 %212
  store i32 %211, ptr %213, align 4
  %214 = load i32, ptr %25, align 4
  %215 = add i32 %214, 1
  store i32 %215, ptr %25, align 4
  br label %220

216:                                              ; preds = %90, %90
  store i16 %62, ptr %23, align 4
  %217 = icmp eq i16 %69, 24
  br i1 %217, label %218, label %219

218:                                              ; preds = %216
  store i32 2, ptr %24, align 4
  br label %220

219:                                              ; preds = %216
  store i32 1, ptr %24, align 4
  br label %220

220:                                              ; preds = %219, %218, %208, %207, %191, %188, %175, %172, %159, %156, %143, %140, %134, %133, %124, %123, %116, %115, %108, %102, %90, %87, %84, %61, %56, %41, %37, %31
  %221 = phi i16 [ %34, %207 ], [ %34, %133 ], [ %34, %123 ], [ %34, %108 ], [ %112, %115 ], [ %34, %61 ], [ %34, %87 ], [ %34, %102 ], [ %34, %90 ], [ %34, %218 ], [ %34, %219 ], [ %34, %208 ], [ %34, %134 ], [ %34, %124 ], [ %112, %116 ], [ %34, %84 ], [ %34, %140 ], [ %34, %143 ], [ %34, %156 ], [ %34, %159 ], [ %34, %172 ], [ %34, %175 ], [ %34, %188 ], [ %34, %191 ], [ %34, %41 ], [ %34, %37 ], [ %34, %31 ], [ %34, %56 ]
  %222 = add nuw nsw i32 %33, 1
  %223 = load i16, ptr %16, align 2
  %224 = zext i16 %223 to i32
  %225 = icmp ult i32 %222, %224
  br i1 %225, label %226, label %228

226:                                              ; preds = %220
  %227 = load i16, ptr %14, align 4
  br label %31

228:                                              ; preds = %220, %4
  %229 = and i32 %13, 12
  %230 = icmp eq i32 %229, 0
  br i1 %230, label %351, label %231

231:                                              ; preds = %228
  %232 = getelementptr inbounds %struct.auto_pin_cfg, ptr %1, i32 0, i32 7
  store i32 0, ptr %9, align 4
  %233 = and i32 %13, 8
  %234 = icmp ne i32 %233, 0
  %235 = and i32 %13, 4
  %236 = icmp ne i32 %235, 0
  br label %237

237:                                              ; preds = %300, %231
  %238 = phi i1 [ %302, %300 ], [ %234, %231 ]
  %239 = phi i1 [ %301, %300 ], [ %236, %231 ]
  %240 = phi i32 [ %304, %300 ], [ 0, %231 ]
  %241 = load i32, ptr %232, align 4
  %242 = icmp slt i32 %240, %241
  br i1 %242, label %243, label %306

243:                                              ; preds = %237
  br i1 %239, label %244, label %267

244:                                              ; preds = %243
  %245 = getelementptr %struct.auto_pin_cfg, ptr %1, i32 0, i32 8, i32 %240
  %246 = getelementptr %struct.auto_pin_cfg, ptr %1, i32 0, i32 8, i32 %240, i32 1
  %247 = load i32, ptr %246, align 4
  %248 = icmp eq i32 %247, 0
  br i1 %248, label %249, label %267

249:                                              ; preds = %244
  %250 = getelementptr %struct.auto_pin_cfg, ptr %1, i32 0, i32 8, i32 %240, i32 2
  %251 = load i8, ptr %250, align 4
  %252 = and i8 %251, 3
  %253 = icmp eq i8 %252, 0
  br i1 %253, label %254, label %267

254:                                              ; preds = %249
  %255 = load i16, ptr %245, align 4
  %256 = call i32 @snd_hda_codec_get_pincfg(ptr noundef %0, i16 noundef zeroext %255) #11
  %257 = and i32 %256, -1073741824
  %258 = icmp eq i32 %257, 1073741824
  %259 = icmp slt i32 %256, 0
  %260 = or i1 %259, %258
  br i1 %260, label %267, label %261

261:                                              ; preds = %254
  %262 = lshr i32 %256, 24
  %263 = and i32 %262, 48
  switch i32 %263, label %264 [
    i32 16, label %267
    i32 32, label %267
  ]

264:                                              ; preds = %261
  %265 = and i32 %256, 15
  %266 = icmp eq i32 %265, 12
  br i1 %266, label %292, label %267

267:                                              ; preds = %264, %261, %261, %254, %249, %244, %243
  br i1 %238, label %268, label %300

268:                                              ; preds = %267
  %269 = load i32, ptr %9, align 4
  %270 = getelementptr %struct.auto_pin_cfg, ptr %1, i32 0, i32 8, i32 %269
  %271 = getelementptr %struct.auto_pin_cfg, ptr %1, i32 0, i32 8, i32 %269, i32 1
  %272 = load i32, ptr %271, align 4
  %273 = icmp eq i32 %272, 0
  br i1 %273, label %274, label %300

274:                                              ; preds = %268
  %275 = getelementptr %struct.auto_pin_cfg, ptr %1, i32 0, i32 8, i32 %269, i32 2
  %276 = load i8, ptr %275, align 4
  %277 = and i8 %276, 3
  %278 = icmp eq i8 %277, 0
  br i1 %278, label %279, label %300

279:                                              ; preds = %274
  %280 = load i16, ptr %270, align 4
  %281 = call i32 @snd_hda_codec_get_pincfg(ptr noundef %0, i16 noundef zeroext %280) #11
  %282 = and i32 %281, -1073741824
  %283 = icmp eq i32 %282, 1073741824
  %284 = icmp slt i32 %281, 0
  %285 = or i1 %284, %283
  br i1 %285, label %300, label %286

286:                                              ; preds = %279
  %287 = lshr i32 %281, 24
  %288 = and i32 %287, 48
  switch i32 %288, label %289 [
    i32 16, label %300
    i32 32, label %300
  ]

289:                                              ; preds = %286
  %290 = and i32 %281, 15
  %291 = icmp eq i32 %290, 13
  br i1 %291, label %292, label %300

292:                                              ; preds = %289, %264
  %293 = phi i8 [ 1, %264 ], [ 2, %289 ]
  %294 = phi i1 [ false, %264 ], [ %239, %289 ]
  %295 = phi i1 [ %238, %264 ], [ false, %289 ]
  %296 = load i32, ptr %9, align 4
  %297 = getelementptr %struct.auto_pin_cfg, ptr %1, i32 0, i32 8, i32 %296, i32 2
  %298 = load i8, ptr %297, align 4
  %299 = or i8 %298, %293
  store i8 %299, ptr %297, align 4
  br label %300

300:                                              ; preds = %292, %289, %286, %286, %279, %274, %268, %267
  %301 = phi i1 [ %239, %289 ], [ %239, %267 ], [ %239, %268 ], [ %239, %274 ], [ %239, %279 ], [ %239, %286 ], [ %239, %286 ], [ %294, %292 ]
  %302 = phi i1 [ true, %289 ], [ false, %267 ], [ true, %268 ], [ true, %274 ], [ true, %279 ], [ true, %286 ], [ true, %286 ], [ %295, %292 ]
  %303 = load i32, ptr %9, align 4
  %304 = add i32 %303, 1
  store i32 %304, ptr %9, align 4
  %305 = select i1 %301, i1 true, i1 %302
  br i1 %305, label %237, label %306

306:                                              ; preds = %300, %237
  %307 = phi i1 [ %239, %237 ], [ false, %300 ]
  %308 = phi i1 [ %238, %237 ], [ false, %300 ]
  store i32 0, ptr %9, align 4
  %309 = select i1 %307, i1 true, i1 %308
  br i1 %309, label %310, label %351

310:                                              ; preds = %345, %306
  %311 = phi i1 [ %347, %345 ], [ %308, %306 ]
  %312 = phi i1 [ %346, %345 ], [ %307, %306 ]
  %313 = phi i32 [ %349, %345 ], [ 0, %306 ]
  %314 = load i32, ptr %232, align 4
  %315 = icmp slt i32 %313, %314
  br i1 %315, label %316, label %351

316:                                              ; preds = %310
  %317 = getelementptr %struct.auto_pin_cfg, ptr %1, i32 0, i32 8, i32 %313
  %318 = getelementptr %struct.auto_pin_cfg, ptr %1, i32 0, i32 8, i32 %313, i32 1
  %319 = load i32, ptr %318, align 4
  %320 = icmp eq i32 %319, 0
  br i1 %320, label %321, label %345

321:                                              ; preds = %316
  %322 = getelementptr %struct.auto_pin_cfg, ptr %1, i32 0, i32 8, i32 %313, i32 2
  %323 = load i8, ptr %322, align 4
  %324 = and i8 %323, 3
  %325 = icmp eq i8 %324, 0
  br i1 %325, label %326, label %345

326:                                              ; preds = %321
  %327 = load i16, ptr %317, align 4
  %328 = call i32 @snd_hda_codec_get_pincfg(ptr noundef %0, i16 noundef zeroext %327) #11
  %329 = and i32 %328, -1073741824
  %330 = icmp eq i32 %329, 1073741824
  %331 = icmp slt i32 %328, 0
  %332 = or i1 %331, %330
  br i1 %332, label %345, label %333

333:                                              ; preds = %326
  %334 = lshr i32 %328, 24
  %335 = and i32 %334, 48
  switch i32 %335, label %336 [
    i32 16, label %345
    i32 32, label %345
  ]

336:                                              ; preds = %333
  %337 = select i1 %312, i1 true, i1 %311
  br i1 %337, label %338, label %345

338:                                              ; preds = %336
  %339 = select i1 %312, i1 %311, i1 false
  %340 = select i1 %312, i8 1, i8 2
  %341 = load i32, ptr %9, align 4
  %342 = getelementptr %struct.auto_pin_cfg, ptr %1, i32 0, i32 8, i32 %341, i32 2
  %343 = load i8, ptr %342, align 4
  %344 = or i8 %343, %340
  store i8 %344, ptr %342, align 4
  br label %345

345:                                              ; preds = %338, %336, %333, %333, %326, %321, %316
  %346 = phi i1 [ %312, %316 ], [ %312, %321 ], [ %312, %326 ], [ %312, %333 ], [ %312, %333 ], [ false, %338 ], [ false, %336 ]
  %347 = phi i1 [ %311, %316 ], [ %311, %321 ], [ %311, %326 ], [ %311, %333 ], [ %311, %333 ], [ %339, %338 ], [ false, %336 ]
  %348 = load i32, ptr %9, align 4
  %349 = add i32 %348, 1
  store i32 %349, ptr %9, align 4
  %350 = select i1 %346, i1 true, i1 %347
  br i1 %350, label %310, label %351

351:                                              ; preds = %345, %310, %306, %228
  %352 = load i32, ptr %1, align 4
  %353 = icmp eq i32 %352, 0
  br i1 %353, label %354, label %395

354:                                              ; preds = %351
  %355 = getelementptr inbounds %struct.auto_pin_cfg, ptr %1, i32 0, i32 4
  %356 = load i32, ptr %355, align 4
  %357 = icmp sgt i32 %356, 1
  %358 = and i32 %13, 1
  %359 = icmp eq i32 %358, 0
  %360 = select i1 %357, i1 %359, i1 false
  br i1 %360, label %363, label %361

361:                                              ; preds = %354
  %362 = getelementptr inbounds %struct.auto_pin_cfg, ptr %1, i32 0, i32 1
  call void @sort(ptr noundef nonnull %6, i32 noundef 0, i32 noundef 4, ptr noundef nonnull @compare_seq, ptr noundef null) #11
  br label %406

363:                                              ; preds = %354
  store i32 0, ptr %9, align 4
  br label %364

364:                                              ; preds = %374, %363
  %365 = phi i32 [ %375, %374 ], [ 0, %363 ]
  %366 = phi i32 [ %377, %374 ], [ 0, %363 ]
  %367 = phi i32 [ %376, %374 ], [ %356, %363 ]
  %368 = getelementptr [5 x %struct.auto_out_pin], ptr %8, i32 0, i32 %366, i32 1
  %369 = load i16, ptr %368, align 2
  %370 = and i16 %369, 15
  %371 = icmp eq i16 %370, 15
  br i1 %371, label %372, label %379

372:                                              ; preds = %364
  %373 = add nsw i32 %366, 1
  store i32 %373, ptr %9, align 4
  br label %374

374:                                              ; preds = %379, %372
  %375 = phi i32 [ %365, %372 ], [ %380, %379 ]
  %376 = phi i32 [ %367, %372 ], [ %384, %379 ]
  %377 = phi i32 [ %373, %372 ], [ %366, %379 ]
  %378 = icmp slt i32 %377, %376
  br i1 %378, label %364, label %388

379:                                              ; preds = %364
  %380 = add i32 %365, 1
  store i32 %380, ptr %1, align 4
  %381 = getelementptr [5 x %struct.auto_out_pin], ptr %6, i32 0, i32 %365
  %382 = getelementptr [5 x %struct.auto_out_pin], ptr %8, i32 0, i32 %366
  %383 = load i32, ptr %382, align 2
  store i32 %383, ptr %381, align 2
  %384 = add nsw i32 %367, -1
  store i32 %384, ptr %355, align 4
  %385 = getelementptr %struct.auto_out_pin, ptr %382, i32 1
  %386 = sub i32 %384, %366
  %387 = shl i32 %386, 2
  call void @llvm.memmove.p0.p0.i32(ptr align 2 %382, ptr align 2 %385, i32 %387, i1 false)
  br label %374

388:                                              ; preds = %374
  %389 = getelementptr %struct.auto_out_pin, ptr %8, i32 %376
  %390 = mul i32 %376, -4
  %391 = add i32 %390, 20
  call void @llvm.memset.p0.i32(ptr align 2 %389, i8 0, i32 %391, i1 false)
  %392 = icmp eq i32 %376, 0
  br i1 %392, label %393, label %395

393:                                              ; preds = %388
  %394 = getelementptr inbounds %struct.auto_pin_cfg, ptr %1, i32 0, i32 5
  store i32 2, ptr %394, align 4
  br label %395

395:                                              ; preds = %393, %388, %351
  %396 = phi i32 [ %352, %351 ], [ %375, %393 ], [ %375, %388 ]
  %397 = getelementptr inbounds %struct.auto_pin_cfg, ptr %1, i32 0, i32 1
  call void @sort(ptr noundef nonnull %6, i32 noundef %396, i32 noundef 4, ptr noundef nonnull @compare_seq, ptr noundef null) #11
  %398 = icmp sgt i32 %396, 0
  br i1 %398, label %399, label %406

399:                                              ; preds = %399, %395
  %400 = phi i32 [ %404, %399 ], [ 0, %395 ]
  %401 = getelementptr %struct.auto_out_pin, ptr %6, i32 %400
  %402 = load i16, ptr %401, align 2
  %403 = getelementptr i16, ptr %397, i32 %400
  store i16 %402, ptr %403, align 2
  %404 = add nuw nsw i32 %400, 1
  %405 = icmp eq i32 %404, %396
  br i1 %405, label %406, label %399

406:                                              ; preds = %399, %395, %361
  %407 = phi ptr [ %362, %361 ], [ %397, %395 ], [ %397, %399 ]
  %408 = getelementptr inbounds %struct.auto_pin_cfg, ptr %1, i32 0, i32 3
  %409 = getelementptr inbounds %struct.auto_pin_cfg, ptr %1, i32 0, i32 2
  %410 = load i32, ptr %409, align 4
  call void @sort(ptr noundef nonnull %7, i32 noundef %410, i32 noundef 4, ptr noundef nonnull @compare_seq, ptr noundef null) #11
  %411 = icmp sgt i32 %410, 0
  br i1 %411, label %412, label %419

412:                                              ; preds = %412, %406
  %413 = phi i32 [ %417, %412 ], [ 0, %406 ]
  %414 = getelementptr %struct.auto_out_pin, ptr %7, i32 %413
  %415 = load i16, ptr %414, align 2
  %416 = getelementptr i16, ptr %408, i32 %413
  store i16 %415, ptr %416, align 2
  %417 = add nuw nsw i32 %413, 1
  %418 = icmp eq i32 %417, %410
  br i1 %418, label %419, label %412

419:                                              ; preds = %412, %406
  %420 = getelementptr inbounds %struct.auto_pin_cfg, ptr %1, i32 0, i32 6
  %421 = getelementptr inbounds %struct.auto_pin_cfg, ptr %1, i32 0, i32 4
  %422 = load i32, ptr %421, align 4
  call void @sort(ptr noundef nonnull %8, i32 noundef %422, i32 noundef 4, ptr noundef nonnull @compare_seq, ptr noundef null) #11
  %423 = icmp sgt i32 %422, 0
  br i1 %423, label %424, label %431

424:                                              ; preds = %424, %419
  %425 = phi i32 [ %429, %424 ], [ 0, %419 ]
  %426 = getelementptr %struct.auto_out_pin, ptr %8, i32 %425
  %427 = load i16, ptr %426, align 2
  %428 = getelementptr i16, ptr %420, i32 %425
  store i16 %427, ptr %428, align 2
  %429 = add nuw nsw i32 %425, 1
  %430 = icmp eq i32 %429, %422
  br i1 %430, label %431, label %424

431:                                              ; preds = %424, %419
  %432 = load i32, ptr %1, align 4
  %433 = icmp eq i32 %432, 0
  %434 = and i32 %13, 2
  %435 = icmp eq i32 %434, 0
  %436 = select i1 %433, i1 %435, i1 false
  br i1 %436, label %437, label %447

437:                                              ; preds = %431
  %438 = load i32, ptr %409, align 4
  %439 = icmp eq i32 %438, 0
  br i1 %439, label %442, label %440

440:                                              ; preds = %437
  store i32 %438, ptr %1, align 4
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(10) %407, ptr noundef align 4 dereferenceable(10) %408, i32 10, i1 false)
  %441 = getelementptr inbounds %struct.auto_pin_cfg, ptr %1, i32 0, i32 5
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(14) %409, i8 0, i64 14, i1 false)
  store i32 1, ptr %441, align 4
  br label %447

442:                                              ; preds = %437
  %443 = load i32, ptr %421, align 4
  %444 = icmp eq i32 %443, 0
  br i1 %444, label %456, label %445

445:                                              ; preds = %442
  store i32 %443, ptr %1, align 4
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(10) %407, ptr noundef align 4 dereferenceable(10) %420, i32 10, i1 false)
  store i32 0, ptr %421, align 4
  call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(10) %420, i8 0, i32 10, i1 false)
  %446 = getelementptr inbounds %struct.auto_pin_cfg, ptr %1, i32 0, i32 5
  store i32 2, ptr %446, align 4
  br label %447

447:                                              ; preds = %445, %440, %431
  %448 = phi i32 [ %438, %440 ], [ %443, %445 ], [ %432, %431 ]
  %449 = add i32 %448, -3
  %450 = icmp ult i32 %449, 2
  br i1 %450, label %451, label %456

451:                                              ; preds = %447
  %452 = getelementptr %struct.auto_pin_cfg, ptr %1, i32 0, i32 1, i32 1
  %453 = load i16, ptr %452, align 2
  %454 = getelementptr %struct.auto_pin_cfg, ptr %1, i32 0, i32 1, i32 2
  %455 = load i16, ptr %454, align 2
  store i16 %455, ptr %452, align 2
  store i16 %453, ptr %454, align 2
  br label %456

456:                                              ; preds = %451, %447, %442
  %457 = load i32, ptr %421, align 4
  %458 = add i32 %457, -3
  %459 = icmp ult i32 %458, 2
  br i1 %459, label %460, label %465

460:                                              ; preds = %456
  %461 = getelementptr %struct.auto_pin_cfg, ptr %1, i32 0, i32 6, i32 1
  %462 = load i16, ptr %461, align 2
  %463 = getelementptr %struct.auto_pin_cfg, ptr %1, i32 0, i32 6, i32 2
  %464 = load i16, ptr %463, align 2
  store i16 %464, ptr %461, align 2
  store i16 %462, ptr %463, align 2
  br label %465

465:                                              ; preds = %460, %456
  %466 = load i32, ptr %409, align 4
  %467 = add i32 %466, -3
  %468 = icmp ult i32 %467, 2
  br i1 %468, label %469, label %474

469:                                              ; preds = %465
  %470 = getelementptr %struct.auto_pin_cfg, ptr %1, i32 0, i32 3, i32 1
  %471 = load i16, ptr %470, align 2
  %472 = getelementptr %struct.auto_pin_cfg, ptr %1, i32 0, i32 3, i32 2
  %473 = load i16, ptr %472, align 2
  store i16 %473, ptr %470, align 2
  store i16 %471, ptr %472, align 2
  br label %474

474:                                              ; preds = %469, %465
  %475 = getelementptr inbounds %struct.auto_pin_cfg, ptr %1, i32 0, i32 8
  %476 = getelementptr inbounds %struct.auto_pin_cfg, ptr %1, i32 0, i32 7
  %477 = load i32, ptr %476, align 4
  call void @sort(ptr noundef %475, i32 noundef %477, i32 noundef 12, ptr noundef nonnull @compare_input_type, ptr noundef null) #11
  %478 = getelementptr inbounds %struct.hdac_device, ptr %0, i32 0, i32 15
  %479 = load ptr, ptr %478, align 8
  %480 = load i32, ptr %1, align 4
  %481 = load i16, ptr %407, align 4
  %482 = zext i16 %481 to i32
  %483 = getelementptr %struct.auto_pin_cfg, ptr %1, i32 0, i32 1, i32 1
  %484 = load i16, ptr %483, align 2
  %485 = zext i16 %484 to i32
  %486 = getelementptr %struct.auto_pin_cfg, ptr %1, i32 0, i32 1, i32 2
  %487 = load i16, ptr %486, align 4
  %488 = zext i16 %487 to i32
  %489 = getelementptr %struct.auto_pin_cfg, ptr %1, i32 0, i32 1, i32 3
  %490 = load i16, ptr %489, align 2
  %491 = zext i16 %490 to i32
  %492 = getelementptr %struct.auto_pin_cfg, ptr %1, i32 0, i32 1, i32 4
  %493 = load i16, ptr %492, align 4
  %494 = zext i16 %493 to i32
  %495 = getelementptr inbounds %struct.auto_pin_cfg, ptr %1, i32 0, i32 5
  %496 = load i32, ptr %495, align 4
  %497 = icmp eq i32 %496, 2
  %498 = icmp eq i32 %496, 1
  %499 = select i1 %498, ptr @.str.5, ptr @.str.6
  %500 = select i1 %497, ptr @.str.4, ptr %499
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %0, ptr noundef nonnull @.str.3, ptr noundef %479, i32 noundef %480, i32 noundef %482, i32 noundef %485, i32 noundef %488, i32 noundef %491, i32 noundef %494, ptr noundef nonnull %500) #12
  %501 = load i32, ptr %409, align 4
  %502 = load i16, ptr %408, align 4
  %503 = zext i16 %502 to i32
  %504 = getelementptr %struct.auto_pin_cfg, ptr %1, i32 0, i32 3, i32 1
  %505 = load i16, ptr %504, align 2
  %506 = zext i16 %505 to i32
  %507 = getelementptr %struct.auto_pin_cfg, ptr %1, i32 0, i32 3, i32 2
  %508 = load i16, ptr %507, align 4
  %509 = zext i16 %508 to i32
  %510 = getelementptr %struct.auto_pin_cfg, ptr %1, i32 0, i32 3, i32 3
  %511 = load i16, ptr %510, align 2
  %512 = zext i16 %511 to i32
  %513 = getelementptr %struct.auto_pin_cfg, ptr %1, i32 0, i32 3, i32 4
  %514 = load i16, ptr %513, align 4
  %515 = zext i16 %514 to i32
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %0, ptr noundef nonnull @.str.7, i32 noundef %501, i32 noundef %503, i32 noundef %506, i32 noundef %509, i32 noundef %512, i32 noundef %515) #12
  %516 = load i32, ptr %421, align 4
  %517 = load i16, ptr %420, align 4
  %518 = zext i16 %517 to i32
  %519 = getelementptr %struct.auto_pin_cfg, ptr %1, i32 0, i32 6, i32 1
  %520 = load i16, ptr %519, align 2
  %521 = zext i16 %520 to i32
  %522 = getelementptr %struct.auto_pin_cfg, ptr %1, i32 0, i32 6, i32 2
  %523 = load i16, ptr %522, align 4
  %524 = zext i16 %523 to i32
  %525 = getelementptr %struct.auto_pin_cfg, ptr %1, i32 0, i32 6, i32 3
  %526 = load i16, ptr %525, align 2
  %527 = zext i16 %526 to i32
  %528 = getelementptr %struct.auto_pin_cfg, ptr %1, i32 0, i32 6, i32 4
  %529 = load i16, ptr %528, align 4
  %530 = zext i16 %529 to i32
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %0, ptr noundef nonnull @.str.8, i32 noundef %516, i32 noundef %518, i32 noundef %521, i32 noundef %524, i32 noundef %527, i32 noundef %530) #12
  %531 = getelementptr inbounds %struct.auto_pin_cfg, ptr %1, i32 0, i32 12
  %532 = load i16, ptr %531, align 2
  %533 = zext i16 %532 to i32
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %0, ptr noundef nonnull @.str.9, i32 noundef %533) #12
  %534 = getelementptr inbounds %struct.auto_pin_cfg, ptr %1, i32 0, i32 9
  %535 = load i32, ptr %534, align 4
  %536 = icmp eq i32 %535, 0
  br i1 %536, label %544, label %537

537:                                              ; preds = %474
  %538 = getelementptr inbounds %struct.auto_pin_cfg, ptr %1, i32 0, i32 10
  %539 = load i16, ptr %538, align 4
  %540 = zext i16 %539 to i32
  %541 = getelementptr %struct.auto_pin_cfg, ptr %1, i32 0, i32 10, i32 1
  %542 = load i16, ptr %541, align 2
  %543 = zext i16 %542 to i32
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %0, ptr noundef nonnull @.str.10, i32 noundef %540, i32 noundef %543) #12
  br label %544

544:                                              ; preds = %537, %474
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %0, ptr noundef nonnull @.str.11) #12
  store i32 0, ptr %9, align 4
  %545 = load i32, ptr %476, align 4
  %546 = icmp sgt i32 %545, 0
  br i1 %546, label %547, label %558

547:                                              ; preds = %547, %544
  %548 = phi i32 [ %555, %547 ], [ 0, %544 ]
  %549 = call ptr @hda_get_autocfg_input_label(ptr noundef %0, ptr noundef %1, i32 noundef %548)
  %550 = load i32, ptr %9, align 4
  %551 = getelementptr %struct.auto_pin_cfg, ptr %1, i32 0, i32 8, i32 %550
  %552 = load i16, ptr %551, align 4
  %553 = zext i16 %552 to i32
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %0, ptr noundef nonnull @.str.12, ptr noundef %549, i32 noundef %553) #12
  %554 = load i32, ptr %9, align 4
  %555 = add i32 %554, 1
  store i32 %555, ptr %9, align 4
  %556 = load i32, ptr %476, align 4
  %557 = icmp slt i32 %555, %556
  br i1 %557, label %547, label %558

558:                                              ; preds = %547, %544
  %559 = getelementptr inbounds %struct.auto_pin_cfg, ptr %1, i32 0, i32 11
  %560 = load i16, ptr %559, align 4
  %561 = icmp eq i16 %560, 0
  br i1 %561, label %564, label %562

562:                                              ; preds = %558
  %563 = zext i16 %560 to i32
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %0, ptr noundef nonnull @.str.13, i32 noundef %563) #12
  br label %564

564:                                              ; preds = %562, %558
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #11
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %8) #11
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %7) #11
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %6) #11
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hda_get_int_hint(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hda_codec_get_pincfg(ptr noundef, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #5

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memmove.p0.p0.i32(ptr nocapture writeonly, ptr nocapture readonly, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @sort(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @compare_input_type(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #6 {
  %3 = getelementptr inbounds %struct.auto_pin_cfg_item, ptr %0, i32 0, i32 1
  %4 = load i32, ptr %3, align 4
  %5 = getelementptr inbounds %struct.auto_pin_cfg_item, ptr %1, i32 0, i32 1
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %4, %6
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = sub i32 %4, %6
  br label %36

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.auto_pin_cfg_item, ptr %0, i32 0, i32 2
  %12 = load i8, ptr %11, align 4
  %13 = and i8 %12, 1
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %20, label %15

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.auto_pin_cfg_item, ptr %1, i32 0, i32 2
  %17 = load i8, ptr %16, align 4
  %18 = and i8 %17, 2
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %20, label %36

20:                                               ; preds = %15, %10
  %21 = and i8 %12, 2
  %22 = icmp eq i8 %21, 0
  %23 = getelementptr inbounds %struct.auto_pin_cfg_item, ptr %1, i32 0, i32 2
  %24 = load i8, ptr %23, align 4
  %25 = and i8 %24, 1
  %26 = icmp eq i8 %25, 0
  %27 = select i1 %22, i1 true, i1 %26
  br i1 %27, label %28, label %36

28:                                               ; preds = %20
  %29 = lshr i8 %24, 2
  %30 = and i8 %29, 1
  %31 = zext i8 %30 to i32
  %32 = lshr i8 %12, 2
  %33 = and i8 %32, 1
  %34 = zext i8 %33 to i32
  %35 = sub nsw i32 %31, %34
  br label %36

36:                                               ; preds = %28, %20, %15, %8
  %37 = phi i32 [ %9, %8 ], [ %35, %28 ], [ -1, %15 ], [ 1, %20 ]
  ret i32 %37
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @hda_get_autocfg_input_label(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr %struct.auto_pin_cfg, ptr %1, i32 0, i32 8, i32 %2, i32 1
  %5 = load i32, ptr %4, align 4
  %6 = icmp sgt i32 %2, 0
  br i1 %6, label %7, label %12

7:                                                ; preds = %3
  %8 = add nsw i32 %2, -1
  %9 = getelementptr %struct.auto_pin_cfg, ptr %1, i32 0, i32 8, i32 %8, i32 1
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, %5
  br i1 %11, label %22, label %12

12:                                               ; preds = %7, %3
  %13 = getelementptr inbounds %struct.auto_pin_cfg, ptr %1, i32 0, i32 7
  %14 = load i32, ptr %13, align 4
  %15 = add i32 %14, -1
  %16 = icmp sgt i32 %15, %2
  br i1 %16, label %17, label %70

17:                                               ; preds = %12
  %18 = add nsw i32 %2, 1
  %19 = getelementptr %struct.auto_pin_cfg, ptr %1, i32 0, i32 8, i32 %18, i32 1
  %20 = load i32, ptr %19, align 4
  %21 = icmp eq i32 %20, %5
  br i1 %21, label %22, label %70

22:                                               ; preds = %17, %7
  %23 = icmp eq i32 %5, 0
  br i1 %23, label %24, label %70

24:                                               ; preds = %22
  %25 = getelementptr %struct.auto_pin_cfg, ptr %1, i32 0, i32 8, i32 %2
  %26 = load i16, ptr %25, align 4
  %27 = tail call i32 @snd_hda_codec_get_pincfg(ptr noundef %0, i16 noundef zeroext %26) #11
  %28 = lshr i32 %27, 24
  %29 = and i32 %28, 63
  %30 = and i32 %27, -1073741824
  %31 = icmp eq i32 %30, 1073741824
  %32 = icmp slt i32 %27, 0
  %33 = or i1 %32, %31
  br i1 %33, label %70, label %34

34:                                               ; preds = %24
  %35 = and i32 %28, 48
  switch i32 %35, label %36 [
    i32 16, label %70
    i32 32, label %70
  ]

36:                                               ; preds = %34
  %37 = add nsw i32 %29, -3
  %38 = icmp ult i32 %37, -2
  br i1 %38, label %70, label %39

39:                                               ; preds = %36
  %40 = getelementptr inbounds %struct.auto_pin_cfg, ptr %1, i32 0, i32 7
  %41 = load i32, ptr %40, align 4
  %42 = icmp sgt i32 %41, 0
  br i1 %42, label %43, label %70

43:                                               ; preds = %65, %39
  %44 = phi i32 [ %66, %65 ], [ 0, %39 ]
  %45 = phi i32 [ %67, %65 ], [ 0, %39 ]
  %46 = getelementptr %struct.auto_pin_cfg, ptr %1, i32 0, i32 8, i32 %45
  %47 = load i16, ptr %46, align 4
  %48 = tail call i32 @snd_hda_codec_get_pincfg(ptr noundef %0, i16 noundef zeroext %47) #11
  %49 = lshr i32 %48, 24
  %50 = and i32 %49, 63
  %51 = and i32 %48, -1073741824
  %52 = icmp eq i32 %51, 1073741824
  %53 = icmp slt i32 %48, 0
  %54 = or i1 %53, %52
  br i1 %54, label %65, label %55

55:                                               ; preds = %43
  %56 = and i32 %49, 48
  switch i32 %56, label %57 [
    i32 16, label %65
    i32 32, label %65
  ]

57:                                               ; preds = %55
  %58 = icmp eq i32 %50, 2
  %59 = select i1 %58, i32 5, i32 3
  %60 = icmp eq i32 %50, 1
  %61 = select i1 %60, i32 4, i32 %59
  %62 = icmp eq i32 %44, 0
  %63 = icmp eq i32 %44, %61
  %64 = select i1 %62, i1 true, i1 %63
  br i1 %64, label %65, label %70

65:                                               ; preds = %57, %55, %55, %43
  %66 = phi i32 [ %61, %57 ], [ %44, %43 ], [ %44, %55 ], [ %44, %55 ]
  %67 = add nuw nsw i32 %45, 1
  %68 = load i32, ptr %40, align 4
  %69 = icmp slt i32 %67, %68
  br i1 %69, label %43, label %70

70:                                               ; preds = %65, %57, %39, %36, %34, %34, %24, %22, %17, %12
  %71 = phi i32 [ 1, %22 ], [ 0, %17 ], [ 0, %12 ], [ 1, %36 ], [ 1, %24 ], [ 1, %34 ], [ 1, %34 ], [ 0, %39 ], [ 0, %65 ], [ 1, %57 ]
  %72 = getelementptr %struct.auto_pin_cfg, ptr %1, i32 0, i32 8, i32 %2
  %73 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 30
  %74 = load i32, ptr %73, align 8
  %75 = lshr i32 %74, 19
  %76 = and i32 %75, 1
  %77 = or i32 %76, %71
  %78 = load i16, ptr %72, align 4
  %79 = icmp ne i32 %77, 0
  %80 = tail call fastcc ptr @hda_get_input_pin_label(ptr noundef %0, ptr noundef %72, i16 noundef zeroext %78, i1 noundef zeroext %79)
  ret ptr %80
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local i32 @snd_hda_get_input_pin_attr(i32 noundef %0) #7 {
  %2 = lshr i32 %0, 24
  %3 = and i32 %2, 63
  %4 = and i32 %0, -1073741824
  %5 = icmp eq i32 %4, 1073741824
  br i1 %5, label %16, label %6

6:                                                ; preds = %1
  %7 = icmp slt i32 %0, 0
  br i1 %7, label %16, label %8

8:                                                ; preds = %6
  %9 = and i32 %2, 48
  switch i32 %9, label %11 [
    i32 16, label %16
    i32 32, label %10
  ]

10:                                               ; preds = %8
  br label %16

11:                                               ; preds = %8
  %12 = icmp eq i32 %3, 2
  %13 = select i1 %12, i32 5, i32 3
  %14 = icmp eq i32 %3, 1
  %15 = select i1 %14, i32 4, i32 %13
  br label %16

16:                                               ; preds = %11, %10, %8, %6, %1
  %17 = phi i32 [ 2, %10 ], [ 0, %1 ], [ 1, %6 ], [ 1, %8 ], [ %15, %11 ]
  ret i32 %17
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @hda_get_input_pin_label(ptr noundef %0, ptr noundef readonly %1, i16 noundef zeroext %2, i1 noundef zeroext %3) unnamed_addr #0 {
  %5 = tail call i32 @snd_hda_codec_get_pincfg(ptr noundef %0, i16 noundef zeroext %2) #11
  %6 = lshr i32 %5, 20
  %7 = and i32 %6, 15
  switch i32 %7, label %53 [
    i32 10, label %8
    i32 8, label %41
    i32 9, label %54
    i32 3, label %49
    i32 12, label %50
    i32 13, label %51
    i32 2, label %52
  ]

8:                                                ; preds = %4
  %9 = icmp eq ptr %1, null
  br i1 %9, label %21, label %10

10:                                               ; preds = %8
  %11 = getelementptr inbounds %struct.auto_pin_cfg_item, ptr %1, i32 0, i32 2
  %12 = load i8, ptr %11, align 4
  %13 = and i8 %12, 1
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %15, label %54

15:                                               ; preds = %10
  %16 = and i8 %12, 2
  %17 = icmp ne i8 %16, 0
  %18 = xor i1 %3, true
  %19 = or i1 %17, %18
  %20 = select i1 %17, ptr @.str.30, ptr @.str.26
  br i1 %19, label %54, label %22

21:                                               ; preds = %8
  br i1 %3, label %22, label %54

22:                                               ; preds = %21, %15
  %23 = lshr i32 %5, 24
  %24 = and i32 %23, 63
  %25 = and i32 %5, -1073741824
  %26 = icmp eq i32 %25, 1073741824
  br i1 %26, label %54, label %27

27:                                               ; preds = %22
  %28 = icmp slt i32 %5, 0
  br i1 %28, label %37, label %29

29:                                               ; preds = %27
  %30 = and i32 %23, 48
  switch i32 %30, label %32 [
    i32 16, label %37
    i32 32, label %31
  ]

31:                                               ; preds = %29
  br label %37

32:                                               ; preds = %29
  %33 = icmp eq i32 %24, 2
  %34 = icmp eq i32 %24, 1
  %35 = select i1 %33, i32 4, i32 2
  %36 = select i1 %34, i32 3, i32 %35
  br label %37

37:                                               ; preds = %32, %31, %29, %27
  %38 = phi i32 [ %36, %32 ], [ 0, %29 ], [ 0, %27 ], [ 1, %31 ]
  %39 = getelementptr [5 x ptr], ptr @hda_get_input_pin_label.mic_names, i32 0, i32 %38
  %40 = load ptr, ptr %39, align 4
  br label %54

41:                                               ; preds = %4
  br i1 %3, label %42, label %54

42:                                               ; preds = %41
  %43 = and i32 %5, -1073741824
  %44 = icmp eq i32 %43, 1073741824
  br i1 %44, label %54, label %45

45:                                               ; preds = %42
  %46 = and i32 %5, -1342177280
  %47 = icmp eq i32 %46, 536870912
  %48 = select i1 %47, ptr @.str.33, ptr @.str.32
  br label %54

49:                                               ; preds = %4
  br label %54

50:                                               ; preds = %4
  br label %54

51:                                               ; preds = %4
  br label %54

52:                                               ; preds = %4
  br label %54

53:                                               ; preds = %4
  br label %54

54:                                               ; preds = %53, %52, %51, %50, %49, %45, %42, %41, %37, %22, %21, %15, %10, %4
  %55 = phi ptr [ @.str.38, %53 ], [ @.str.30, %52 ], [ @.str.37, %51 ], [ @.str.36, %50 ], [ @.str.35, %49 ], [ %40, %37 ], [ @.str.29, %10 ], [ %20, %15 ], [ @.str.26, %21 ], [ @.str.32, %41 ], [ @.str.34, %4 ], [ @.str.31, %22 ], [ @.str.31, %42 ], [ %48, %45 ]
  ret ptr %55
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @snd_hda_get_pin_label(ptr noundef %0, i16 noundef zeroext %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5) #0 {
  %7 = tail call i32 @snd_hda_codec_get_pincfg(ptr noundef %0, i16 noundef zeroext %1) #11
  %8 = icmp ne ptr %5, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %6
  store i32 0, ptr %5, align 4
  br label %10

10:                                               ; preds = %9, %6
  %11 = and i32 %7, -1073741824
  %12 = icmp eq i32 %11, 1073741824
  br i1 %12, label %105, label %13

13:                                               ; preds = %10
  %14 = lshr i32 %7, 20
  %15 = and i32 %14, 15
  switch i32 %15, label %46 [
    i32 0, label %16
    i32 1, label %17
    i32 2, label %18
    i32 4, label %19
    i32 5, label %19
  ]

16:                                               ; preds = %13
  tail call fastcc void @fill_audio_out_name(ptr noundef %0, i16 noundef zeroext %1, ptr noundef %2, ptr noundef nonnull @.str.14, ptr noundef %3, i32 noundef %4, ptr noundef %5)
  br label %105

17:                                               ; preds = %13
  tail call fastcc void @fill_audio_out_name(ptr noundef %0, i16 noundef zeroext %1, ptr noundef %2, ptr noundef nonnull @.str.15, ptr noundef %3, i32 noundef %4, ptr noundef %5)
  br label %105

18:                                               ; preds = %13
  tail call fastcc void @fill_audio_out_name(ptr noundef %0, i16 noundef zeroext %1, ptr noundef %2, ptr noundef nonnull @.str.16, ptr noundef %3, i32 noundef %4, ptr noundef %5)
  br label %105

19:                                               ; preds = %13, %13
  %20 = and i32 %7, 1056964608
  %21 = icmp eq i32 %20, 402653184
  %22 = select i1 %21, ptr @.str.17, ptr @.str.18
  %23 = icmp ne ptr %2, null
  %24 = and i1 %23, %8
  br i1 %24, label %25, label %102

25:                                               ; preds = %19
  %26 = getelementptr inbounds %struct.auto_pin_cfg, ptr %2, i32 0, i32 9
  %27 = load i32, ptr %26, align 4
  %28 = icmp sgt i32 %27, 0
  br i1 %28, label %29, label %102

29:                                               ; preds = %42, %25
  %30 = phi i32 [ %43, %42 ], [ 0, %25 ]
  %31 = getelementptr %struct.auto_pin_cfg, ptr %2, i32 0, i32 10, i32 %30
  %32 = load i16, ptr %31, align 2
  %33 = icmp eq i16 %32, %1
  br i1 %33, label %102, label %34

34:                                               ; preds = %29
  %35 = tail call i32 @snd_hda_codec_get_pincfg(ptr noundef %0, i16 noundef zeroext %32) #11
  %36 = and i32 %35, 1056964608
  %37 = icmp ne i32 %36, 402653184
  %38 = xor i1 %21, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %34
  %40 = load i32, ptr %5, align 4
  %41 = add i32 %40, 1
  store i32 %41, ptr %5, align 4
  br label %42

42:                                               ; preds = %39, %34
  %43 = add nuw nsw i32 %30, 1
  %44 = load i32, ptr %26, align 4
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %29, label %102

46:                                               ; preds = %13
  %47 = icmp eq ptr %2, null
  br i1 %47, label %67, label %48

48:                                               ; preds = %46
  %49 = getelementptr inbounds %struct.auto_pin_cfg, ptr %2, i32 0, i32 7
  %50 = load i32, ptr %49, align 4
  %51 = icmp sgt i32 %50, 0
  br i1 %51, label %52, label %67

52:                                               ; preds = %63, %48
  %53 = phi i32 [ %64, %63 ], [ %50, %48 ]
  %54 = phi i32 [ %65, %63 ], [ 0, %48 ]
  %55 = getelementptr %struct.auto_pin_cfg, ptr %2, i32 0, i32 8, i32 %54
  %56 = load i16, ptr %55, align 4
  %57 = icmp eq i16 %56, %1
  br i1 %57, label %58, label %63

58:                                               ; preds = %52
  %59 = tail call ptr @hda_get_autocfg_input_label(ptr noundef %0, ptr noundef nonnull %2, i32 noundef %54)
  %60 = icmp eq ptr %59, null
  br i1 %60, label %61, label %102

61:                                               ; preds = %58
  %62 = load i32, ptr %49, align 4
  br label %63

63:                                               ; preds = %61, %52
  %64 = phi i32 [ %62, %61 ], [ %53, %52 ]
  %65 = add nuw nsw i32 %54, 1
  %66 = icmp slt i32 %65, %64
  br i1 %66, label %52, label %67

67:                                               ; preds = %63, %48, %46
  %68 = tail call i32 @snd_hda_codec_get_pincfg(ptr noundef %0, i16 noundef zeroext %1) #11
  %69 = lshr i32 %68, 20
  %70 = and i32 %69, 15
  switch i32 %70, label %97 [
    i32 10, label %71
    i32 8, label %86
    i32 9, label %102
    i32 3, label %93
    i32 12, label %94
    i32 13, label %95
    i32 2, label %96
  ]

71:                                               ; preds = %67
  %72 = lshr i32 %68, 24
  %73 = and i32 %72, 63
  %74 = and i32 %68, -1073741824
  %75 = icmp eq i32 %74, 1073741824
  br i1 %75, label %102, label %76

76:                                               ; preds = %71
  %77 = icmp slt i32 %68, 0
  br i1 %77, label %98, label %78

78:                                               ; preds = %76
  %79 = and i32 %72, 48
  switch i32 %79, label %81 [
    i32 16, label %98
    i32 32, label %80
  ]

80:                                               ; preds = %78
  br label %98

81:                                               ; preds = %78
  %82 = icmp eq i32 %73, 2
  %83 = icmp eq i32 %73, 1
  %84 = select i1 %82, i32 4, i32 2
  %85 = select i1 %83, i32 3, i32 %84
  br label %98

86:                                               ; preds = %67
  %87 = and i32 %68, -1073741824
  %88 = icmp eq i32 %87, 1073741824
  br i1 %88, label %102, label %89

89:                                               ; preds = %86
  %90 = and i32 %68, -1342177280
  %91 = icmp eq i32 %90, 536870912
  %92 = select i1 %91, ptr @.str.33, ptr @.str.32
  br label %102

93:                                               ; preds = %67
  br label %102

94:                                               ; preds = %67
  br label %102

95:                                               ; preds = %67
  br label %102

96:                                               ; preds = %67
  br label %102

97:                                               ; preds = %67
  br label %102

98:                                               ; preds = %81, %80, %78, %76
  %99 = phi i32 [ %85, %81 ], [ 0, %78 ], [ 0, %76 ], [ 1, %80 ]
  %100 = getelementptr [5 x ptr], ptr @hda_get_input_pin_label.mic_names, i32 0, i32 %99
  %101 = load ptr, ptr %100, align 4
  br label %102

102:                                              ; preds = %98, %97, %96, %95, %94, %93, %89, %86, %71, %67, %58, %42, %29, %25, %19
  %103 = phi ptr [ %101, %98 ], [ %92, %89 ], [ @.str.31, %86 ], [ @.str.31, %71 ], [ @.str.34, %67 ], [ @.str.35, %93 ], [ @.str.36, %94 ], [ @.str.37, %95 ], [ @.str.30, %96 ], [ @.str.38, %97 ], [ %22, %19 ], [ %22, %25 ], [ %59, %58 ], [ %22, %29 ], [ %22, %42 ]
  %104 = tail call i32 @strscpy(ptr noundef %3, ptr noundef nonnull %103, i32 noundef %4) #11
  br label %105

105:                                              ; preds = %102, %18, %17, %16, %10
  %106 = phi i32 [ 1, %102 ], [ 1, %18 ], [ 1, %17 ], [ 1, %16 ], [ 0, %10 ]
  ret i32 %106
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @fill_audio_out_name(ptr noundef %0, i16 noundef zeroext %1, ptr noundef readonly %2, ptr noundef %3, ptr nocapture noundef writeonly %4, i32 noundef %5, ptr noundef writeonly %6) unnamed_addr #0 {
  %8 = tail call i32 @snd_hda_codec_get_pincfg(ptr noundef %0, i16 noundef zeroext %1) #11
  %9 = lshr i32 %8, 24
  %10 = and i32 %9, 63
  %11 = and i32 %8, -1073741824
  %12 = icmp eq i32 %11, 1073741824
  br i1 %12, label %23, label %13

13:                                               ; preds = %7
  %14 = icmp slt i32 %8, 0
  br i1 %14, label %23, label %15

15:                                               ; preds = %13
  %16 = and i32 %9, 48
  switch i32 %16, label %18 [
    i32 16, label %23
    i32 32, label %17
  ]

17:                                               ; preds = %15
  br label %23

18:                                               ; preds = %15
  %19 = icmp eq i32 %10, 2
  %20 = select i1 %19, i32 5, i32 3
  %21 = icmp eq i32 %10, 1
  %22 = select i1 %21, i32 4, i32 %20
  br label %23

23:                                               ; preds = %18, %17, %15, %13, %7
  %24 = phi i32 [ 2, %17 ], [ 0, %7 ], [ 1, %13 ], [ 1, %15 ], [ %22, %18 ]
  %25 = tail call i32 @strcmp(ptr noundef %3, ptr noundef nonnull dereferenceable(9) @.str.14)
  %26 = tail call i32 @snd_hda_codec_get_pincfg(ptr noundef %0, i16 noundef zeroext %1) #11
  %27 = and i32 %26, -1073741824
  %28 = icmp eq i32 %27, 1073741824
  %29 = icmp slt i32 %26, 0
  %30 = or i1 %29, %28
  br i1 %30, label %38, label %31

31:                                               ; preds = %23
  %32 = lshr i32 %26, 24
  %33 = and i32 %32, 48
  switch i32 %33, label %34 [
    i32 16, label %38
    i32 32, label %40
  ]

34:                                               ; preds = %31
  %35 = and i32 %26, 1056964608
  %36 = icmp eq i32 %35, 33554432
  %37 = select i1 %36, ptr @.str.42, ptr @.str.39
  br label %38

38:                                               ; preds = %34, %31, %23
  %39 = phi ptr [ @.str.39, %31 ], [ @.str.39, %23 ], [ %37, %34 ]
  br label %40

40:                                               ; preds = %38, %31
  %41 = phi ptr [ %39, %38 ], [ @.str.41, %31 ]
  %42 = icmp eq ptr %2, null
  br i1 %42, label %151, label %43

43:                                               ; preds = %40
  %44 = getelementptr inbounds %struct.auto_pin_cfg, ptr %2, i32 0, i32 1
  %45 = load i32, ptr %2, align 4
  %46 = icmp sgt i32 %45, 0
  br i1 %46, label %47, label %65

47:                                               ; preds = %52, %43
  %48 = phi i32 [ %53, %52 ], [ 0, %43 ]
  %49 = getelementptr i16, ptr %44, i32 %48
  %50 = load i16, ptr %49, align 2
  %51 = icmp eq i16 %50, %1
  br i1 %51, label %55, label %52

52:                                               ; preds = %47
  %53 = add nuw nsw i32 %48, 1
  %54 = icmp eq i32 %53, %45
  br i1 %54, label %65, label %47

55:                                               ; preds = %47
  %56 = icmp eq i32 %45, 1
  br i1 %56, label %151, label %57

57:                                               ; preds = %55
  %58 = icmp ugt i32 %45, 4
  br i1 %58, label %59, label %62

59:                                               ; preds = %57
  %60 = icmp eq ptr %6, null
  br i1 %60, label %151, label %61

61:                                               ; preds = %59
  store i32 %48, ptr %6, align 4
  br label %151

62:                                               ; preds = %57
  %63 = getelementptr [4 x ptr], ptr @check_output_sfx.channel_sfx, i32 0, i32 %48
  %64 = load ptr, ptr %63, align 4
  br label %151

65:                                               ; preds = %52, %43
  %66 = getelementptr inbounds %struct.auto_pin_cfg, ptr %2, i32 0, i32 3
  %67 = getelementptr inbounds %struct.auto_pin_cfg, ptr %2, i32 0, i32 2
  %68 = load i32, ptr %67, align 4
  %69 = icmp sgt i32 %68, 0
  br i1 %69, label %70, label %88

70:                                               ; preds = %75, %65
  %71 = phi i32 [ %76, %75 ], [ 0, %65 ]
  %72 = getelementptr i16, ptr %66, i32 %71
  %73 = load i16, ptr %72, align 2
  %74 = icmp eq i16 %73, %1
  br i1 %74, label %78, label %75

75:                                               ; preds = %70
  %76 = add nuw nsw i32 %71, 1
  %77 = icmp eq i32 %76, %68
  br i1 %77, label %88, label %70

78:                                               ; preds = %70
  %79 = icmp eq i32 %68, 1
  br i1 %79, label %151, label %80

80:                                               ; preds = %78
  %81 = icmp ugt i32 %68, 4
  br i1 %81, label %82, label %85

82:                                               ; preds = %80
  %83 = icmp eq ptr %6, null
  br i1 %83, label %151, label %84

84:                                               ; preds = %82
  store i32 %71, ptr %6, align 4
  br label %151

85:                                               ; preds = %80
  %86 = getelementptr [4 x ptr], ptr @check_output_sfx.channel_sfx, i32 0, i32 %71
  %87 = load ptr, ptr %86, align 4
  br label %151

88:                                               ; preds = %75, %65
  %89 = getelementptr inbounds %struct.auto_pin_cfg, ptr %2, i32 0, i32 6
  %90 = getelementptr inbounds %struct.auto_pin_cfg, ptr %2, i32 0, i32 4
  %91 = load i32, ptr %90, align 4
  %92 = tail call i32 @snd_hda_codec_get_pincfg(ptr noundef %0, i16 noundef zeroext %1) #11
  %93 = and i32 %92, -1073741824
  %94 = icmp eq i32 %93, 1073741824
  %95 = icmp slt i32 %92, 0
  %96 = or i1 %95, %94
  br i1 %96, label %104, label %97

97:                                               ; preds = %88
  %98 = lshr i32 %92, 24
  %99 = and i32 %98, 48
  switch i32 %99, label %100 [
    i32 16, label %104
    i32 32, label %106
  ]

100:                                              ; preds = %97
  %101 = and i32 %92, 1056964608
  %102 = icmp eq i32 %101, 33554432
  %103 = select i1 %102, ptr @.str.42, ptr @.str.39
  br label %104

104:                                              ; preds = %100, %97, %88
  %105 = phi ptr [ @.str.39, %97 ], [ @.str.39, %88 ], [ %103, %100 ]
  br label %106

106:                                              ; preds = %104, %97
  %107 = phi ptr [ %105, %104 ], [ @.str.41, %97 ]
  %108 = icmp sgt i32 %91, 0
  br i1 %108, label %109, label %151

109:                                              ; preds = %116, %106
  %110 = phi i32 [ %117, %116 ], [ 0, %106 ]
  %111 = getelementptr i16, ptr %89, i32 %110
  %112 = load i16, ptr %111, align 2
  %113 = icmp eq i16 %112, %1
  br i1 %113, label %114, label %116

114:                                              ; preds = %109
  %115 = icmp eq i32 %110, 0
  br i1 %115, label %145, label %119

116:                                              ; preds = %109
  %117 = add nuw nsw i32 %110, 1
  %118 = icmp eq i32 %117, %91
  br i1 %118, label %151, label %109

119:                                              ; preds = %138, %114
  %120 = phi i32 [ %142, %138 ], [ 0, %114 ]
  %121 = phi i32 [ %143, %138 ], [ 0, %114 ]
  %122 = getelementptr i16, ptr %89, i32 %121
  %123 = load i16, ptr %122, align 2
  %124 = tail call i32 @snd_hda_codec_get_pincfg(ptr noundef %0, i16 noundef zeroext %123) #11
  %125 = and i32 %124, -1073741824
  %126 = icmp eq i32 %125, 1073741824
  %127 = icmp slt i32 %124, 0
  %128 = or i1 %127, %126
  br i1 %128, label %136, label %129

129:                                              ; preds = %119
  %130 = lshr i32 %124, 24
  %131 = and i32 %130, 48
  switch i32 %131, label %132 [
    i32 16, label %136
    i32 32, label %138
  ]

132:                                              ; preds = %129
  %133 = and i32 %124, 1056964608
  %134 = icmp eq i32 %133, 33554432
  %135 = select i1 %134, ptr @.str.42, ptr @.str.39
  br label %136

136:                                              ; preds = %132, %129, %119
  %137 = phi ptr [ @.str.39, %129 ], [ @.str.39, %119 ], [ %135, %132 ]
  br label %138

138:                                              ; preds = %136, %129
  %139 = phi ptr [ %137, %136 ], [ @.str.41, %129 ]
  %140 = icmp eq ptr %107, %139
  %141 = zext i1 %140 to i32
  %142 = add i32 %120, %141
  %143 = add nuw nsw i32 %121, 1
  %144 = icmp eq i32 %143, %110
  br i1 %144, label %145, label %119

145:                                              ; preds = %138, %114
  %146 = phi i32 [ 0, %114 ], [ %142, %138 ]
  %147 = icmp sgt i32 %146, -1
  %148 = icmp ne ptr %6, null
  %149 = and i1 %148, %147
  br i1 %149, label %150, label %151

150:                                              ; preds = %145
  store i32 %146, ptr %6, align 4
  br label %151

151:                                              ; preds = %150, %145, %116, %106, %85, %84, %82, %78, %62, %61, %59, %55, %40
  %152 = phi ptr [ %87, %85 ], [ @.str.39, %40 ], [ @.str.39, %150 ], [ @.str.39, %145 ], [ @.str.39, %82 ], [ @.str.39, %84 ], [ @.str.39, %78 ], [ %64, %62 ], [ @.str.39, %55 ], [ @.str.39, %61 ], [ @.str.39, %59 ], [ @.str.39, %106 ], [ @.str.39, %116 ]
  %153 = icmp eq i32 %25, 0
  %154 = icmp eq i32 %24, 1
  %155 = select i1 %153, i1 %154, i1 false
  %156 = select i1 %155, ptr @.str.15, ptr %3
  %157 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %4, i32 noundef %5, ptr noundef nonnull @.str.40, ptr noundef %41, ptr noundef %156, ptr noundef nonnull %152)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @snd_hda_add_verbs(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 43
  %4 = tail call ptr @snd_array_new(ptr noundef %3) #11
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %2
  store ptr %1, ptr %4, align 4
  br label %7

7:                                                ; preds = %6, %2
  %8 = phi i32 [ 0, %6 ], [ -12, %2 ]
  ret i32 %8
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_array_new(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @snd_hda_apply_verbs(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 43
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %20, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 43, i32 4
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 43, i32 2
  br label %9

9:                                                ; preds = %9, %5
  %10 = phi i32 [ 0, %5 ], [ %13, %9 ]
  %11 = phi ptr [ %7, %5 ], [ %17, %9 ]
  %12 = load ptr, ptr %11, align 4
  tail call void @snd_hda_sequence_write(ptr noundef %0, ptr noundef %12) #11
  %13 = add nuw i32 %10, 1
  %14 = load ptr, ptr %6, align 4
  %15 = load i32, ptr %8, align 4
  %16 = mul i32 %15, %13
  %17 = getelementptr i8, ptr %14, i32 %16
  %18 = load i32, ptr %2, align 4
  %19 = icmp ult i32 %13, %18
  br i1 %19, label %9, label %20

20:                                               ; preds = %9, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_hda_sequence_write(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @snd_hda_apply_pincfgs(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = load i16, ptr %1, align 4
  %4 = icmp eq i16 %3, 0
  br i1 %4, label %14, label %5

5:                                                ; preds = %5, %2
  %6 = phi i16 [ %12, %5 ], [ %3, %2 ]
  %7 = phi ptr [ %11, %5 ], [ %1, %2 ]
  %8 = getelementptr inbounds %struct.hda_pintbl, ptr %7, i32 0, i32 1
  %9 = load i32, ptr %8, align 4
  %10 = tail call i32 @snd_hda_codec_set_pincfg(ptr noundef %0, i16 noundef zeroext %6, i32 noundef %9) #11
  %11 = getelementptr %struct.hda_pintbl, ptr %7, i32 1
  %12 = load i16, ptr %11, align 4
  %13 = icmp eq i16 %12, 0
  br i1 %13, label %14, label %5

14:                                               ; preds = %5, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hda_codec_set_pincfg(ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @snd_hda_apply_fixup(ptr noundef %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 41
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 40
  %8 = load i32, ptr %7, align 8
  tail call fastcc void @apply_fixup(ptr noundef %0, i32 noundef %8, i32 noundef %1, i32 noundef 0)
  br label %9

9:                                                ; preds = %6, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @apply_fixup(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 41
  %6 = icmp sgt i32 %1, -1
  br i1 %6, label %7, label %88

7:                                                ; preds = %4
  %8 = icmp eq i32 %2, 1
  %9 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 43
  %10 = icmp eq i32 %2, 0
  %11 = getelementptr inbounds %struct.hdac_device, ptr %0, i32 0, i32 15
  br label %12

12:                                               ; preds = %84, %7
  %13 = phi i32 [ %1, %7 ], [ %86, %84 ]
  %14 = phi i32 [ %3, %7 ], [ %17, %84 ]
  %15 = load ptr, ptr %5, align 4
  %16 = getelementptr %struct.hda_fixup, ptr %15, i32 %13
  %17 = add i32 %14, 1
  %18 = icmp sgt i32 %17, 10
  br i1 %18, label %88, label %19

19:                                               ; preds = %12
  %20 = getelementptr %struct.hda_fixup, ptr %15, i32 %13, i32 1
  %21 = load i8, ptr %20, align 4
  %22 = and i8 %21, 2
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %19
  %25 = getelementptr %struct.hda_fixup, ptr %15, i32 %13, i32 2
  %26 = load i32, ptr %25, align 4
  %27 = add i32 %14, 2
  tail call fastcc void @apply_fixup(ptr noundef %0, i32 noundef %26, i32 noundef %2, i32 noundef %27)
  br label %28

28:                                               ; preds = %24, %19
  %29 = load i32, ptr %16, align 4
  switch i32 %29, label %78 [
    i32 1, label %30
    i32 2, label %47
    i32 3, label %56
    i32 4, label %61
  ]

30:                                               ; preds = %28
  br i1 %10, label %31, label %80

31:                                               ; preds = %30
  %32 = getelementptr %struct.hda_fixup, ptr %15, i32 %13, i32 3
  %33 = load ptr, ptr %32, align 4
  %34 = icmp eq ptr %33, null
  br i1 %34, label %80, label %35

35:                                               ; preds = %31
  %36 = load i16, ptr %33, align 4
  %37 = icmp eq i16 %36, 0
  br i1 %37, label %80, label %38

38:                                               ; preds = %38, %35
  %39 = phi i16 [ %45, %38 ], [ %36, %35 ]
  %40 = phi ptr [ %44, %38 ], [ %33, %35 ]
  %41 = getelementptr inbounds %struct.hda_pintbl, ptr %40, i32 0, i32 1
  %42 = load i32, ptr %41, align 4
  %43 = tail call i32 @snd_hda_codec_set_pincfg(ptr noundef %0, i16 noundef zeroext %39, i32 noundef %42) #11
  %44 = getelementptr %struct.hda_pintbl, ptr %40, i32 1
  %45 = load i16, ptr %44, align 4
  %46 = icmp eq i16 %45, 0
  br i1 %46, label %80, label %38

47:                                               ; preds = %28
  br i1 %8, label %48, label %80

48:                                               ; preds = %47
  %49 = getelementptr %struct.hda_fixup, ptr %15, i32 %13, i32 3
  %50 = load ptr, ptr %49, align 4
  %51 = icmp eq ptr %50, null
  br i1 %51, label %80, label %52

52:                                               ; preds = %48
  %53 = tail call ptr @snd_array_new(ptr noundef %9) #11
  %54 = icmp eq ptr %53, null
  br i1 %54, label %80, label %55

55:                                               ; preds = %52
  store ptr %50, ptr %53, align 4
  br label %80

56:                                               ; preds = %28
  %57 = getelementptr %struct.hda_fixup, ptr %15, i32 %13, i32 3
  %58 = load ptr, ptr %57, align 4
  %59 = icmp eq ptr %58, null
  br i1 %59, label %80, label %60

60:                                               ; preds = %56
  tail call void %58(ptr noundef %0, ptr noundef %16, i32 noundef %2) #11
  br label %80

61:                                               ; preds = %28
  br i1 %8, label %62, label %80

62:                                               ; preds = %61
  %63 = getelementptr %struct.hda_fixup, ptr %15, i32 %13, i32 3
  %64 = load ptr, ptr %63, align 4
  %65 = icmp eq ptr %64, null
  br i1 %65, label %80, label %66

66:                                               ; preds = %62
  %67 = load i16, ptr %64, align 4
  %68 = icmp eq i16 %67, 0
  br i1 %68, label %80, label %69

69:                                               ; preds = %69, %66
  %70 = phi i16 [ %76, %69 ], [ %67, %66 ]
  %71 = phi ptr [ %75, %69 ], [ %64, %66 ]
  %72 = getelementptr inbounds %struct.hda_pintbl, ptr %71, i32 0, i32 1
  %73 = load i32, ptr %72, align 4
  %74 = tail call i32 @_snd_hda_set_pin_ctl(ptr noundef %0, i16 noundef zeroext %70, i32 noundef %73, i1 noundef zeroext true) #11
  %75 = getelementptr %struct.hda_pintbl, ptr %71, i32 1
  %76 = load i16, ptr %75, align 4
  %77 = icmp eq i16 %76, 0
  br i1 %77, label %80, label %69

78:                                               ; preds = %28
  %79 = load ptr, ptr %11, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.47, ptr noundef %79, i32 noundef %29) #12
  br label %80

80:                                               ; preds = %78, %69, %66, %62, %61, %60, %56, %55, %52, %48, %47, %38, %35, %31, %30
  %81 = load i8, ptr %20, align 4
  %82 = and i8 %81, 3
  %83 = icmp eq i8 %82, 1
  br i1 %83, label %84, label %88

84:                                               ; preds = %80
  %85 = getelementptr %struct.hda_fixup, ptr %15, i32 %13, i32 2
  %86 = load i32, ptr %85, align 4
  %87 = icmp sgt i32 %86, -1
  br i1 %87, label %12, label %88

88:                                               ; preds = %84, %80, %12, %4
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @snd_hda_pick_pin_fixup(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, i1 noundef zeroext %3) #8 {
  %5 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 40
  %6 = load i32, ptr %5, align 8
  %7 = icmp eq i32 %6, -1
  br i1 %7, label %8, label %88

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.snd_hda_pin_quirk, ptr %1, i32 0, i32 1
  %10 = load i16, ptr %9, align 4
  %11 = icmp eq i16 %10, 0
  br i1 %11, label %88, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.hdac_device, ptr %0, i32 0, i32 8
  %14 = load i32, ptr %13, align 4
  %15 = and i32 %14, -65536
  %16 = getelementptr inbounds %struct.hdac_device, ptr %0, i32 0, i32 7
  %17 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 23
  %18 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 23, i32 4
  %19 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 23, i32 2
  %20 = xor i1 %3, true
  br label %21

21:                                               ; preds = %83, %12
  %22 = phi i16 [ %10, %12 ], [ %86, %83 ]
  %23 = phi ptr [ %1, %12 ], [ %84, %83 ]
  %24 = zext i16 %22 to i32
  %25 = shl nuw i32 %24, 16
  %26 = icmp eq i32 %15, %25
  br i1 %26, label %27, label %83

27:                                               ; preds = %21
  %28 = load i32, ptr %16, align 8
  %29 = load i32, ptr %23, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %83

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.snd_hda_pin_quirk, ptr %23, i32 0, i32 2
  %33 = load ptr, ptr %32, align 4
  %34 = load i32, ptr %17, align 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %79, label %36

36:                                               ; preds = %31
  %37 = load ptr, ptr %18, align 4
  %38 = load i16, ptr %33, align 4
  %39 = icmp eq i16 %38, 0
  br label %40

40:                                               ; preds = %70, %36
  %41 = phi i1 [ true, %36 ], [ %75, %70 ]
  %42 = phi i32 [ 0, %36 ], [ %71, %70 ]
  %43 = phi ptr [ %37, %36 ], [ %74, %70 ]
  %44 = load i16, ptr %43, align 4
  %45 = getelementptr inbounds %struct.hda_pincfg, ptr %43, i32 0, i32 3
  %46 = load i32, ptr %45, align 4
  br i1 %39, label %66, label %47

47:                                               ; preds = %62, %40
  %48 = phi i16 [ %64, %62 ], [ %38, %40 ]
  %49 = phi ptr [ %63, %62 ], [ %33, %40 ]
  %50 = icmp eq i16 %48, %44
  br i1 %50, label %51, label %62

51:                                               ; preds = %47
  %52 = getelementptr inbounds %struct.hda_pintbl, ptr %49, i32 0, i32 1
  %53 = load i32, ptr %52, align 4
  %54 = xor i32 %53, %46
  %55 = icmp ult i32 %54, 256
  br i1 %55, label %70, label %56

56:                                               ; preds = %51
  %57 = and i32 %46, -268435456
  %58 = icmp eq i32 %57, 1073741824
  %59 = and i32 %53, -268435456
  %60 = icmp eq i32 %59, 1073741824
  %61 = select i1 %58, i1 %60, i1 false
  br i1 %61, label %70, label %77

62:                                               ; preds = %47
  %63 = getelementptr %struct.hda_pintbl, ptr %49, i32 1
  %64 = load i16, ptr %63, align 4
  %65 = icmp eq i16 %64, 0
  br i1 %65, label %66, label %47

66:                                               ; preds = %62, %40
  %67 = and i32 %46, -268435456
  %68 = icmp eq i32 %67, 1073741824
  %69 = select i1 %20, i1 true, i1 %68
  br i1 %69, label %70, label %77

70:                                               ; preds = %66, %56, %51
  %71 = add nuw i32 %42, 1
  %72 = load i32, ptr %19, align 4
  %73 = mul i32 %72, %71
  %74 = getelementptr i8, ptr %37, i32 %73
  %75 = icmp ult i32 %71, %34
  %76 = icmp eq i32 %71, %34
  br i1 %76, label %77, label %40

77:                                               ; preds = %70, %66, %56
  %78 = phi i1 [ %75, %70 ], [ %41, %56 ], [ %41, %66 ]
  br i1 %78, label %83, label %79

79:                                               ; preds = %77, %31
  %80 = getelementptr inbounds %struct.snd_hda_pin_quirk, ptr %23, i32 0, i32 3
  %81 = load i32, ptr %80, align 4
  store i32 %81, ptr %5, align 8
  %82 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 41
  store ptr %2, ptr %82, align 4
  br label %88

83:                                               ; preds = %77, %27, %21
  %84 = getelementptr %struct.snd_hda_pin_quirk, ptr %23, i32 1
  %85 = getelementptr %struct.snd_hda_pin_quirk, ptr %23, i32 1, i32 1
  %86 = load i16, ptr %85, align 4
  %87 = icmp eq i16 %86, 0
  br i1 %87, label %88, label %21

88:                                               ; preds = %83, %79, %8, %4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @snd_hda_pick_fixup(ptr nocapture noundef %0, ptr noundef readonly %1, ptr noundef %2, ptr noundef %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #11
  store i32 0, ptr %5, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #11
  store i32 0, ptr %6, align 4, !annotation !8
  %7 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 40
  %8 = load i32, ptr %7, align 8
  %9 = icmp eq i32 %8, -1
  br i1 %9, label %10, label %77

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 6
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %35, label %14

14:                                               ; preds = %10
  %15 = tail call i32 @strcmp(ptr noundef nonnull %12, ptr noundef nonnull dereferenceable(8) @.str.19)
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %71, label %17

17:                                               ; preds = %14
  %18 = icmp eq ptr %1, null
  br i1 %18, label %37, label %19

19:                                               ; preds = %17
  %20 = getelementptr inbounds %struct.hda_model_fixup, ptr %1, i32 0, i32 1
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %33, label %23

23:                                               ; preds = %28, %19
  %24 = phi ptr [ %31, %28 ], [ %21, %19 ]
  %25 = phi ptr [ %29, %28 ], [ %1, %19 ]
  %26 = tail call i32 @strcmp(ptr noundef nonnull %12, ptr noundef nonnull %24)
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %67, label %28

28:                                               ; preds = %23
  %29 = getelementptr %struct.hda_model_fixup, ptr %25, i32 1
  %30 = getelementptr %struct.hda_model_fixup, ptr %25, i32 1, i32 1
  %31 = load ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %23

33:                                               ; preds = %28, %19
  %34 = icmp eq ptr %2, null
  br i1 %34, label %77, label %39

35:                                               ; preds = %10
  %36 = icmp eq ptr %2, null
  br i1 %36, label %77, label %49

37:                                               ; preds = %17
  %38 = icmp eq ptr %2, null
  br i1 %38, label %77, label %39

39:                                               ; preds = %37, %33
  %40 = call i32 (ptr, ptr, ...) @sscanf(ptr noundef nonnull %12, ptr noundef nonnull @.str.20, ptr noundef nonnull %5, ptr noundef nonnull %6)
  %41 = icmp eq i32 %40, 2
  br i1 %41, label %42, label %49

42:                                               ; preds = %39
  %43 = load i32, ptr %5, align 4
  %44 = trunc i32 %43 to i16
  %45 = load i32, ptr %6, align 4
  %46 = trunc i32 %45 to i16
  %47 = call ptr @snd_pci_quirk_lookup_id(i16 noundef zeroext %44, i16 noundef zeroext %46, ptr noundef nonnull %2) #11
  %48 = icmp eq ptr %47, null
  br i1 %48, label %49, label %64

49:                                               ; preds = %42, %39, %35
  %50 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 1
  %51 = load ptr, ptr %50, align 8
  %52 = getelementptr inbounds %struct.hda_bus, ptr %51, i32 0, i32 2
  %53 = load ptr, ptr %52, align 4
  %54 = call ptr @snd_pci_quirk_lookup(ptr noundef %53, ptr noundef nonnull %2) #11
  %55 = icmp eq ptr %54, null
  br i1 %55, label %56, label %64

56:                                               ; preds = %49
  %57 = getelementptr inbounds %struct.hdac_device, ptr %0, i32 0, i32 8
  %58 = load i32, ptr %57, align 4
  %59 = lshr i32 %58, 16
  %60 = trunc i32 %59 to i16
  %61 = trunc i32 %58 to i16
  %62 = call ptr @snd_pci_quirk_lookup_id(i16 noundef zeroext %60, i16 noundef zeroext %61, ptr noundef nonnull %2) #11
  %63 = icmp eq ptr %62, null
  br i1 %63, label %77, label %64

64:                                               ; preds = %56, %49, %42
  %65 = phi ptr [ %47, %42 ], [ %54, %49 ], [ %62, %56 ]
  %66 = getelementptr inbounds %struct.snd_pci_quirk, ptr %65, i32 0, i32 3
  br label %67

67:                                               ; preds = %64, %23
  %68 = phi ptr [ %66, %64 ], [ %25, %23 ]
  %69 = phi ptr [ null, %64 ], [ %24, %23 ]
  %70 = load i32, ptr %68, align 4
  br label %71

71:                                               ; preds = %67, %14
  %72 = phi ptr [ null, %14 ], [ %3, %67 ]
  %73 = phi i32 [ -2, %14 ], [ %70, %67 ]
  %74 = phi ptr [ null, %14 ], [ %69, %67 ]
  store i32 %73, ptr %7, align 8
  %75 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 41
  store ptr %72, ptr %75, align 4
  %76 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 42
  store ptr %74, ptr %76, align 8
  br label %77

77:                                               ; preds = %71, %56, %37, %35, %33, %4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #11
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_pci_quirk_lookup_id(i16 noundef zeroext, i16 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_pci_quirk_lookup(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_snd_hdac_read_parm(ptr noundef, i16 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @snd_hda_check_amp_caps(ptr noundef, i16 noundef zeroext, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @compare_seq(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #6 {
  %3 = getelementptr inbounds %struct.auto_out_pin, ptr %0, i32 0, i32 1
  %4 = load i16, ptr %3, align 2
  %5 = sext i16 %4 to i32
  %6 = getelementptr inbounds %struct.auto_out_pin, ptr %1, i32 0, i32 1
  %7 = load i16, ptr %6, align 2
  %8 = sext i16 %7 to i32
  %9 = sub nsw i32 %5, %8
  ret i32 %9
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #10

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_snd_hda_set_pin_ctl(ptr noundef, i16 noundef zeroext, i32 noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nounwind }
attributes #12 = { cold nounwind }

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
