; ModuleID = '/llk/IR/sound/pci/hda/hda_jack.c_pt.bc'
source_filename = "../sound/pci/hda/hda_jack.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_is_jack_detectable:\09\09\09\09\09"
module asm "\09.asciz \09\22is_jack_detectable\22\09\09\09\09\09"
module asm "__kstrtabns_is_jack_detectable:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_hda_jack_tbl_get_mst:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_hda_jack_tbl_get_mst\22\09\09\09\09\09"
module asm "__kstrtabns_snd_hda_jack_tbl_get_mst:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_hda_jack_tbl_get_from_tag:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_hda_jack_tbl_get_from_tag\22\09\09\09\09\09"
module asm "__kstrtabns_snd_hda_jack_tbl_get_from_tag:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_hda_jack_set_dirty_all:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_hda_jack_set_dirty_all\22\09\09\09\09\09"
module asm "__kstrtabns_snd_hda_jack_set_dirty_all:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_hda_jack_pin_sense:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_hda_jack_pin_sense\22\09\09\09\09\09"
module asm "__kstrtabns_snd_hda_jack_pin_sense:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_hda_jack_detect_state_mst:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_hda_jack_detect_state_mst\22\09\09\09\09\09"
module asm "__kstrtabns_snd_hda_jack_detect_state_mst:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_hda_jack_detect_enable_callback_mst:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_hda_jack_detect_enable_callback_mst\22\09\09\09\09\09"
module asm "__kstrtabns_snd_hda_jack_detect_enable_callback_mst:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_hda_jack_detect_enable:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_hda_jack_detect_enable\22\09\09\09\09\09"
module asm "__kstrtabns_snd_hda_jack_detect_enable:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_hda_jack_set_gating_jack:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_hda_jack_set_gating_jack\22\09\09\09\09\09"
module asm "__kstrtabns_snd_hda_jack_set_gating_jack:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_hda_jack_bind_keymap:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_hda_jack_bind_keymap\22\09\09\09\09\09"
module asm "__kstrtabns_snd_hda_jack_bind_keymap:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_hda_jack_set_button_state:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_hda_jack_set_button_state\22\09\09\09\09\09"
module asm "__kstrtabns_snd_hda_jack_set_button_state:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_hda_jack_report_sync:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_hda_jack_report_sync\22\09\09\09\09\09"
module asm "__kstrtabns_snd_hda_jack_report_sync:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_hda_jack_add_kctl_mst:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_hda_jack_add_kctl_mst\22\09\09\09\09\09"
module asm "__kstrtabns_snd_hda_jack_add_kctl_mst:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_hda_jack_add_kctls:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_hda_jack_add_kctls\22\09\09\09\09\09"
module asm "__kstrtabns_snd_hda_jack_add_kctls:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_hda_jack_unsol_event:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_hda_jack_unsol_event\22\09\09\09\09\09"
module asm "__kstrtabns_snd_hda_jack_unsol_event:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_hda_jack_poll_all:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_hda_jack_poll_all\22\09\09\09\09\09"
module asm "__kstrtabns_snd_hda_jack_poll_all:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
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
%struct.hda_jack_tbl = type { i16, i32, i8, ptr, i32, i8, i16, i16, i16, i32, i32, ptr }
%struct.hda_bus = type { %struct.hdac_bus, ptr, ptr, ptr, %struct.mutex, [8 x i32], i8, i32, i32 }
%struct.hdac_bus = type { ptr, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, i32, [16 x ptr], [128 x i32], i32, i32, %struct.work_struct, i32, i32, %struct.hdac_rb, %struct.hdac_rb, [8 x i32], %struct.wait_queue_head, %struct.snd_dma_buffer, %struct.snd_dma_buffer, i32, %struct.list_head, i16, i32, i32, i32, %struct.spinlock, %struct.mutex, %struct.mutex, ptr, i32, i32, i32, i32, %struct.list_head, i8, i32 }
%struct.hdac_rb = type { ptr, i32, i16, i16, [8 x i32], [8 x i32] }
%struct.snd_dma_buffer = type { %struct.snd_dma_device, ptr, i32, i32, ptr }
%struct.snd_dma_device = type { i32, i32, i8, ptr }
%struct.hda_jack_callback = type { i16, i32, ptr, i32, i32, ptr, ptr }
%struct.hda_jack_keymap = type { i32, i32 }
%struct.snd_jack = type { %struct.list_head, ptr, ptr, ptr, i32, i32, [100 x i8], [6 x i32], i32, ptr, ptr }
%struct.auto_pin_cfg = type { i32, [5 x i16], i32, [5 x i16], i32, i32, [5 x i16], i32, [18 x %struct.auto_pin_cfg_item], i32, [2 x i16], i16, i16, [2 x i32], i32 }
%struct.auto_pin_cfg_item = type { i16, i32, i8 }

@__kstrtab_is_jack_detectable = external dso_local constant [0 x i8], align 1
@__kstrtabns_is_jack_detectable = external dso_local constant [0 x i8], align 1
@__ksymtab_is_jack_detectable = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @is_jack_detectable to i32), ptr @__kstrtab_is_jack_detectable, ptr @__kstrtabns_is_jack_detectable }, section "___ksymtab_gpl+is_jack_detectable", align 4
@__kstrtab_snd_hda_jack_tbl_get_mst = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_hda_jack_tbl_get_mst = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_hda_jack_tbl_get_mst = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_hda_jack_tbl_get_mst to i32), ptr @__kstrtab_snd_hda_jack_tbl_get_mst, ptr @__kstrtabns_snd_hda_jack_tbl_get_mst }, section "___ksymtab_gpl+snd_hda_jack_tbl_get_mst", align 4
@__kstrtab_snd_hda_jack_tbl_get_from_tag = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_hda_jack_tbl_get_from_tag = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_hda_jack_tbl_get_from_tag = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_hda_jack_tbl_get_from_tag to i32), ptr @__kstrtab_snd_hda_jack_tbl_get_from_tag, ptr @__kstrtabns_snd_hda_jack_tbl_get_from_tag }, section "___ksymtab_gpl+snd_hda_jack_tbl_get_from_tag", align 4
@__kstrtab_snd_hda_jack_set_dirty_all = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_hda_jack_set_dirty_all = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_hda_jack_set_dirty_all = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_hda_jack_set_dirty_all to i32), ptr @__kstrtab_snd_hda_jack_set_dirty_all, ptr @__kstrtabns_snd_hda_jack_set_dirty_all }, section "___ksymtab_gpl+snd_hda_jack_set_dirty_all", align 4
@__kstrtab_snd_hda_jack_pin_sense = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_hda_jack_pin_sense = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_hda_jack_pin_sense = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_hda_jack_pin_sense to i32), ptr @__kstrtab_snd_hda_jack_pin_sense, ptr @__kstrtabns_snd_hda_jack_pin_sense }, section "___ksymtab_gpl+snd_hda_jack_pin_sense", align 4
@__kstrtab_snd_hda_jack_detect_state_mst = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_hda_jack_detect_state_mst = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_hda_jack_detect_state_mst = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_hda_jack_detect_state_mst to i32), ptr @__kstrtab_snd_hda_jack_detect_state_mst, ptr @__kstrtabns_snd_hda_jack_detect_state_mst }, section "___ksymtab_gpl+snd_hda_jack_detect_state_mst", align 4
@__kstrtab_snd_hda_jack_detect_enable_callback_mst = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_hda_jack_detect_enable_callback_mst = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_hda_jack_detect_enable_callback_mst = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_hda_jack_detect_enable_callback_mst to i32), ptr @__kstrtab_snd_hda_jack_detect_enable_callback_mst, ptr @__kstrtabns_snd_hda_jack_detect_enable_callback_mst }, section "___ksymtab_gpl+snd_hda_jack_detect_enable_callback_mst", align 4
@__kstrtab_snd_hda_jack_detect_enable = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_hda_jack_detect_enable = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_hda_jack_detect_enable = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_hda_jack_detect_enable to i32), ptr @__kstrtab_snd_hda_jack_detect_enable, ptr @__kstrtabns_snd_hda_jack_detect_enable }, section "___ksymtab_gpl+snd_hda_jack_detect_enable", align 4
@.str = private unnamed_addr constant [25 x i8] c"sound/pci/hda/hda_jack.c\00", align 1
@__kstrtab_snd_hda_jack_set_gating_jack = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_hda_jack_set_gating_jack = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_hda_jack_set_gating_jack = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_hda_jack_set_gating_jack to i32), ptr @__kstrtab_snd_hda_jack_set_gating_jack, ptr @__kstrtabns_snd_hda_jack_set_gating_jack }, section "___ksymtab_gpl+snd_hda_jack_set_gating_jack", align 4
@__kstrtab_snd_hda_jack_bind_keymap = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_hda_jack_bind_keymap = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_hda_jack_bind_keymap = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_hda_jack_bind_keymap to i32), ptr @__kstrtab_snd_hda_jack_bind_keymap, ptr @__kstrtabns_snd_hda_jack_bind_keymap }, section "___ksymtab_gpl+snd_hda_jack_bind_keymap", align 4
@__kstrtab_snd_hda_jack_set_button_state = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_hda_jack_set_button_state = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_hda_jack_set_button_state = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_hda_jack_set_button_state to i32), ptr @__kstrtab_snd_hda_jack_set_button_state, ptr @__kstrtabns_snd_hda_jack_set_button_state }, section "___ksymtab_gpl+snd_hda_jack_set_button_state", align 4
@__kstrtab_snd_hda_jack_report_sync = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_hda_jack_report_sync = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_hda_jack_report_sync = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_hda_jack_report_sync to i32), ptr @__kstrtab_snd_hda_jack_report_sync, ptr @__kstrtabns_snd_hda_jack_report_sync }, section "___ksymtab_gpl+snd_hda_jack_report_sync", align 4
@__kstrtab_snd_hda_jack_add_kctl_mst = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_hda_jack_add_kctl_mst = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_hda_jack_add_kctl_mst = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_hda_jack_add_kctl_mst to i32), ptr @__kstrtab_snd_hda_jack_add_kctl_mst, ptr @__kstrtabns_snd_hda_jack_add_kctl_mst }, section "___ksymtab_gpl+snd_hda_jack_add_kctl_mst", align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"Headphone Mic\00", align 1
@__kstrtab_snd_hda_jack_add_kctls = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_hda_jack_add_kctls = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_hda_jack_add_kctls = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_hda_jack_add_kctls to i32), ptr @__kstrtab_snd_hda_jack_add_kctls, ptr @__kstrtabns_snd_hda_jack_add_kctls }, section "___ksymtab_gpl+snd_hda_jack_add_kctls", align 4
@__kstrtab_snd_hda_jack_unsol_event = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_hda_jack_unsol_event = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_hda_jack_unsol_event = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_hda_jack_unsol_event to i32), ptr @__kstrtab_snd_hda_jack_unsol_event, ptr @__kstrtabns_snd_hda_jack_unsol_event }, section "___ksymtab_gpl+snd_hda_jack_unsol_event", align 4
@__kstrtab_snd_hda_jack_poll_all = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_hda_jack_poll_all = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_hda_jack_poll_all = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_hda_jack_poll_all to i32), ptr @__kstrtab_snd_hda_jack_poll_all, ptr @__kstrtabns_snd_hda_jack_poll_all }, section "___ksymtab_gpl+snd_hda_jack_poll_all", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.2 = private unnamed_addr constant [9 x i8] c" Phantom\00", align 1
@llvm.compiler.used = appending global [16 x ptr] [ptr @__ksymtab_is_jack_detectable, ptr @__ksymtab_snd_hda_jack_add_kctl_mst, ptr @__ksymtab_snd_hda_jack_add_kctls, ptr @__ksymtab_snd_hda_jack_bind_keymap, ptr @__ksymtab_snd_hda_jack_detect_enable, ptr @__ksymtab_snd_hda_jack_detect_enable_callback_mst, ptr @__ksymtab_snd_hda_jack_detect_state_mst, ptr @__ksymtab_snd_hda_jack_pin_sense, ptr @__ksymtab_snd_hda_jack_poll_all, ptr @__ksymtab_snd_hda_jack_report_sync, ptr @__ksymtab_snd_hda_jack_set_button_state, ptr @__ksymtab_snd_hda_jack_set_dirty_all, ptr @__ksymtab_snd_hda_jack_set_gating_jack, ptr @__ksymtab_snd_hda_jack_tbl_get_from_tag, ptr @__ksymtab_snd_hda_jack_tbl_get_mst, ptr @__ksymtab_snd_hda_jack_unsol_event], section "llvm.metadata"
@switch.table.snd_hda_jack_add_kctl_mst = private unnamed_addr constant [11 x i32] [i32 4, i32 4, i32 1, i32 32, i32 20, i32 20, i32 32, i32 32, i32 32, i32 32, i32 2], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @is_jack_detectable(ptr noundef %0, i16 noundef zeroext %1) #0 {
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 30
  %5 = load i32, ptr %4, align 8
  %6 = and i32 %5, 1024
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %43

8:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #11
  store i32 0, ptr %3, align 4, !annotation !8
  %9 = call i32 @_snd_hdac_read_parm(ptr noundef %0, i16 noundef zeroext %1, i32 noundef 12, ptr noundef nonnull %3) #11
  %10 = load i32, ptr %3, align 4
  %11 = icmp sgt i32 %9, -1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #11
  %12 = and i32 %10, 4
  %13 = icmp eq i32 %12, 0
  %14 = select i1 %11, i1 %13, i1 false
  br i1 %14, label %43, label %15

15:                                               ; preds = %8
  %16 = call i32 @snd_hda_codec_get_pincfg(ptr noundef %0, i16 noundef zeroext %1) #11
  %17 = and i32 %16, 256
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %43

19:                                               ; preds = %15
  %20 = zext i16 %1 to i32
  %21 = getelementptr inbounds %struct.hdac_device, ptr %0, i32 0, i32 18
  %22 = load i16, ptr %21, align 4
  %23 = zext i16 %22 to i32
  %24 = icmp ugt i16 %22, %1
  br i1 %24, label %38, label %25

25:                                               ; preds = %19
  %26 = getelementptr inbounds %struct.hdac_device, ptr %0, i32 0, i32 17
  %27 = load i32, ptr %26, align 8
  %28 = add i32 %27, %23
  %29 = icmp ugt i32 %28, %20
  br i1 %29, label %30, label %38

30:                                               ; preds = %25
  %31 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 14
  %32 = load ptr, ptr %31, align 4
  %33 = sub nsw i32 %20, %23
  %34 = getelementptr i32, ptr %32, i32 %33
  %35 = load i32, ptr %34, align 4
  %36 = and i32 %35, 128
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %30, %25, %19
  %39 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 37
  %40 = load i32, ptr %39, align 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %38, %30
  br label %43

43:                                               ; preds = %42, %38, %15, %8, %2
  %44 = phi i1 [ true, %42 ], [ false, %2 ], [ false, %8 ], [ false, %15 ], [ false, %38 ]
  ret i1 %44
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hda_codec_get_pincfg(ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local ptr @snd_hda_jack_tbl_get_mst(ptr nocapture noundef readonly %0, i16 noundef zeroext %1, i32 noundef %2) #2 {
  %4 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 36, i32 4
  %5 = load ptr, ptr %4, align 8
  %6 = icmp ne i16 %1, 0
  %7 = icmp ne ptr %5, null
  %8 = select i1 %6, i1 %7, i1 false
  br i1 %8, label %9, label %26

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 36
  %11 = load i32, ptr %10, align 8
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %26, label %13

13:                                               ; preds = %22, %9
  %14 = phi i32 [ %23, %22 ], [ 0, %9 ]
  %15 = phi ptr [ %24, %22 ], [ %5, %9 ]
  %16 = load i16, ptr %15, align 4
  %17 = icmp eq i16 %16, %1
  br i1 %17, label %18, label %22

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.hda_jack_tbl, ptr %15, i32 0, i32 1
  %20 = load i32, ptr %19, align 4
  %21 = icmp eq i32 %20, %2
  br i1 %21, label %26, label %22

22:                                               ; preds = %18, %13
  %23 = add nuw i32 %14, 1
  %24 = getelementptr %struct.hda_jack_tbl, ptr %15, i32 1
  %25 = icmp eq i32 %23, %11
  br i1 %25, label %26, label %13

26:                                               ; preds = %22, %18, %9, %3
  %27 = phi ptr [ null, %3 ], [ null, %9 ], [ %15, %18 ], [ null, %22 ]
  ret ptr %27
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local ptr @snd_hda_jack_tbl_get_from_tag(ptr nocapture noundef readonly %0, i8 noundef zeroext %1, i32 noundef %2) #2 {
  %4 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 36, i32 4
  %5 = load ptr, ptr %4, align 8
  %6 = icmp ne i8 %1, 0
  %7 = icmp ne ptr %5, null
  %8 = select i1 %6, i1 %7, i1 false
  br i1 %8, label %9, label %27

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 36
  %11 = load i32, ptr %10, align 8
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %27, label %13

13:                                               ; preds = %23, %9
  %14 = phi i32 [ %24, %23 ], [ 0, %9 ]
  %15 = phi ptr [ %25, %23 ], [ %5, %9 ]
  %16 = getelementptr inbounds %struct.hda_jack_tbl, ptr %15, i32 0, i32 2
  %17 = load i8, ptr %16, align 4
  %18 = icmp eq i8 %17, %1
  br i1 %18, label %19, label %23

19:                                               ; preds = %13
  %20 = getelementptr inbounds %struct.hda_jack_tbl, ptr %15, i32 0, i32 1
  %21 = load i32, ptr %20, align 4
  %22 = icmp eq i32 %21, %2
  br i1 %22, label %27, label %23

23:                                               ; preds = %19, %13
  %24 = add nuw i32 %14, 1
  %25 = getelementptr %struct.hda_jack_tbl, ptr %15, i32 1
  %26 = icmp eq i32 %24, %11
  br i1 %26, label %27, label %13

27:                                               ; preds = %23, %19, %9, %3
  %28 = phi ptr [ null, %3 ], [ null, %9 ], [ %15, %19 ], [ null, %23 ]
  ret ptr %28
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @snd_hda_jack_tbl_disconnect(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 36
  %3 = load i32, ptr %2, align 8
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %31, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 36, i32 4
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 1
  %9 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 2
  br label %10

10:                                               ; preds = %26, %5
  %11 = phi i32 [ %3, %5 ], [ %27, %26 ]
  %12 = phi i32 [ 0, %5 ], [ %28, %26 ]
  %13 = phi ptr [ %7, %5 ], [ %29, %26 ]
  %14 = load ptr, ptr %8, align 8
  %15 = getelementptr inbounds %struct.hda_bus, ptr %14, i32 0, i32 6
  %16 = load i8, ptr %15, align 4
  %17 = and i8 %16, 2
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %10
  %20 = getelementptr inbounds %struct.hda_jack_tbl, ptr %13, i32 0, i32 11
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %19
  %24 = load ptr, ptr %9, align 4
  tail call void @snd_device_disconnect(ptr noundef %24, ptr noundef nonnull %21) #11
  %25 = load i32, ptr %2, align 8
  br label %26

26:                                               ; preds = %23, %19, %10
  %27 = phi i32 [ %11, %10 ], [ %11, %19 ], [ %25, %23 ]
  %28 = add nuw i32 %12, 1
  %29 = getelementptr %struct.hda_jack_tbl, ptr %13, i32 1
  %30 = icmp ult i32 %28, %27
  br i1 %30, label %10, label %31

31:                                               ; preds = %26, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_device_disconnect(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @snd_hda_jack_tbl_clear(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 36
  %3 = load i32, ptr %2, align 8
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %38, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 36, i32 4
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 1
  %9 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 2
  br label %10

10:                                               ; preds = %33, %5
  %11 = phi i32 [ 0, %5 ], [ %34, %33 ]
  %12 = phi ptr [ %7, %5 ], [ %35, %33 ]
  %13 = load ptr, ptr %8, align 8
  %14 = getelementptr inbounds %struct.hda_bus, ptr %13, i32 0, i32 6
  %15 = load i8, ptr %14, align 4
  %16 = and i8 %15, 2
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %10
  %19 = getelementptr inbounds %struct.hda_jack_tbl, ptr %12, i32 0, i32 11
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %24, label %22

22:                                               ; preds = %18
  %23 = load ptr, ptr %9, align 4
  tail call void @snd_device_free(ptr noundef %23, ptr noundef nonnull %20) #11
  br label %24

24:                                               ; preds = %22, %18, %10
  %25 = getelementptr inbounds %struct.hda_jack_tbl, ptr %12, i32 0, i32 3
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %33, label %28

28:                                               ; preds = %28, %24
  %29 = phi ptr [ %31, %28 ], [ %26, %24 ]
  %30 = getelementptr inbounds %struct.hda_jack_callback, ptr %29, i32 0, i32 6
  %31 = load ptr, ptr %30, align 4
  tail call void @kfree(ptr noundef nonnull %29) #11
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %28

33:                                               ; preds = %28, %24
  %34 = add nuw i32 %11, 1
  %35 = getelementptr %struct.hda_jack_tbl, ptr %12, i32 1
  %36 = load i32, ptr %2, align 8
  %37 = icmp ult i32 %34, %36
  br i1 %37, label %10, label %38

38:                                               ; preds = %33, %1
  tail call void @snd_array_free(ptr noundef %2) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_device_free(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_array_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @snd_hda_jack_set_dirty_all(ptr nocapture noundef readonly %0) #4 {
  %2 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 36
  %3 = load i32, ptr %2, align 8
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %24, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 36, i32 4
  %7 = load ptr, ptr %6, align 8
  br label %8

8:                                                ; preds = %19, %5
  %9 = phi i32 [ %20, %19 ], [ %3, %5 ]
  %10 = phi i32 [ %21, %19 ], [ 0, %5 ]
  %11 = phi ptr [ %22, %19 ], [ %7, %5 ]
  %12 = load i16, ptr %11, align 4
  %13 = icmp eq i16 %12, 0
  br i1 %13, label %19, label %14

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.hda_jack_tbl, ptr %11, i32 0, i32 5
  %16 = load i8, ptr %15, align 4
  %17 = or i8 %16, 2
  store i8 %17, ptr %15, align 4
  %18 = load i32, ptr %2, align 8
  br label %19

19:                                               ; preds = %14, %8
  %20 = phi i32 [ %9, %8 ], [ %18, %14 ]
  %21 = add nuw i32 %10, 1
  %22 = getelementptr %struct.hda_jack_tbl, ptr %11, i32 1
  %23 = icmp ult i32 %21, %20
  br i1 %23, label %8, label %24

24:                                               ; preds = %19, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @snd_hda_jack_pin_sense(ptr noundef %0, i16 noundef zeroext %1, i32 noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 36, i32 4
  %6 = load ptr, ptr %5, align 8
  %7 = icmp ne i16 %1, 0
  %8 = icmp ne ptr %6, null
  %9 = select i1 %7, i1 %8, i1 false
  br i1 %9, label %10, label %32

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 36
  %12 = load i32, ptr %11, align 8
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %32, label %14

14:                                               ; preds = %23, %10
  %15 = phi i32 [ %24, %23 ], [ 0, %10 ]
  %16 = phi ptr [ %25, %23 ], [ %6, %10 ]
  %17 = load i16, ptr %16, align 4
  %18 = icmp eq i16 %17, %1
  br i1 %18, label %19, label %23

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.hda_jack_tbl, ptr %16, i32 0, i32 1
  %21 = load i32, ptr %20, align 4
  %22 = icmp eq i32 %21, %2
  br i1 %22, label %27, label %23

23:                                               ; preds = %19, %14
  %24 = add nuw i32 %15, 1
  %25 = getelementptr %struct.hda_jack_tbl, ptr %16, i32 1
  %26 = icmp eq i32 %24, %12
  br i1 %26, label %32, label %14

27:                                               ; preds = %19
  %28 = icmp eq ptr %16, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %27
  tail call fastcc void @jack_detect_update(ptr noundef %0, ptr noundef nonnull %16)
  %30 = getelementptr inbounds %struct.hda_jack_tbl, ptr %16, i32 0, i32 4
  %31 = load i32, ptr %30, align 4
  br label %53

32:                                               ; preds = %27, %23, %10, %3
  %33 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 30
  %34 = load i32, ptr %33, align 8
  %35 = and i32 %34, 512
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %46

37:                                               ; preds = %32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #11
  store i32 0, ptr %4, align 4, !annotation !8
  %38 = call i32 @_snd_hdac_read_parm(ptr noundef %0, i16 noundef zeroext %1, i32 noundef 12, ptr noundef nonnull %4) #11
  %39 = load i32, ptr %4, align 4
  %40 = icmp sgt i32 %38, -1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #11
  %41 = and i32 %39, 2
  %42 = icmp eq i32 %41, 0
  %43 = select i1 %40, i1 %42, i1 false
  br i1 %43, label %46, label %44

44:                                               ; preds = %37
  %45 = call i32 @snd_hdac_codec_read(ptr noundef %0, i16 noundef zeroext %1, i32 noundef 0, i32 noundef 1801, i32 noundef 0) #11
  br label %46

46:                                               ; preds = %44, %37, %32
  %47 = call i32 @snd_hdac_codec_read(ptr noundef %0, i16 noundef zeroext %1, i32 noundef 0, i32 noundef 3849, i32 noundef %2) #11
  %48 = load i32, ptr %33, align 8
  %49 = and i32 %48, 4096
  %50 = icmp eq i32 %49, 0
  %51 = xor i32 %47, -2147483648
  %52 = select i1 %50, i32 %47, i32 %51
  br label %53

53:                                               ; preds = %46, %29
  %54 = phi i32 [ %31, %29 ], [ %52, %46 ]
  ret i32 %54
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @jack_detect_update(ptr noundef %0, ptr nocapture noundef %1) unnamed_addr #0 {
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.hda_jack_tbl, ptr %1, i32 0, i32 5
  %5 = load i8, ptr %4, align 4
  %6 = and i8 %5, 2
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %112, label %8

8:                                                ; preds = %2
  %9 = and i8 %5, 4
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %35

11:                                               ; preds = %8
  %12 = load i16, ptr %1, align 4
  %13 = getelementptr inbounds %struct.hda_jack_tbl, ptr %1, i32 0, i32 1
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 30
  %16 = load i32, ptr %15, align 8
  %17 = and i32 %16, 512
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %28

19:                                               ; preds = %11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #11
  store i32 0, ptr %3, align 4, !annotation !8
  %20 = call i32 @_snd_hdac_read_parm(ptr noundef %0, i16 noundef zeroext %12, i32 noundef 12, ptr noundef nonnull %3) #11
  %21 = load i32, ptr %3, align 4
  %22 = icmp sgt i32 %20, -1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #11
  %23 = and i32 %21, 2
  %24 = icmp eq i32 %23, 0
  %25 = select i1 %22, i1 %24, i1 false
  br i1 %25, label %28, label %26

26:                                               ; preds = %19
  %27 = call i32 @snd_hdac_codec_read(ptr noundef %0, i16 noundef zeroext %12, i32 noundef 0, i32 noundef 1801, i32 noundef 0) #11
  br label %28

28:                                               ; preds = %26, %19, %11
  %29 = call i32 @snd_hdac_codec_read(ptr noundef %0, i16 noundef zeroext %12, i32 noundef 0, i32 noundef 3849, i32 noundef %14) #11
  %30 = load i32, ptr %15, align 8
  %31 = and i32 %30, 4096
  %32 = icmp eq i32 %31, 0
  %33 = xor i32 %29, -2147483648
  %34 = select i1 %32, i32 %29, i32 %33
  br label %35

35:                                               ; preds = %28, %8
  %36 = phi i32 [ %34, %28 ], [ -2147483648, %8 ]
  %37 = getelementptr inbounds %struct.hda_jack_tbl, ptr %1, i32 0, i32 4
  store i32 %36, ptr %37, align 4
  %38 = getelementptr inbounds %struct.hda_jack_tbl, ptr %1, i32 0, i32 6
  %39 = load i16, ptr %38, align 2
  %40 = icmp eq i16 %39, 0
  br i1 %40, label %77, label %41

41:                                               ; preds = %35
  %42 = getelementptr inbounds %struct.hda_jack_tbl, ptr %1, i32 0, i32 1
  %43 = load i32, ptr %42, align 4
  %44 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 36, i32 4
  %45 = load ptr, ptr %44, align 8
  %46 = icmp eq ptr %45, null
  br i1 %46, label %71, label %47

47:                                               ; preds = %41
  %48 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 36
  %49 = load i32, ptr %48, align 8
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %71, label %51

51:                                               ; preds = %60, %47
  %52 = phi i32 [ %61, %60 ], [ 0, %47 ]
  %53 = phi ptr [ %62, %60 ], [ %45, %47 ]
  %54 = load i16, ptr %53, align 4
  %55 = icmp eq i16 %54, %39
  br i1 %55, label %56, label %60

56:                                               ; preds = %51
  %57 = getelementptr inbounds %struct.hda_jack_tbl, ptr %53, i32 0, i32 1
  %58 = load i32, ptr %57, align 4
  %59 = icmp eq i32 %58, %43
  br i1 %59, label %64, label %60

60:                                               ; preds = %56, %51
  %61 = add nuw i32 %52, 1
  %62 = getelementptr %struct.hda_jack_tbl, ptr %53, i32 1
  %63 = icmp eq i32 %61, %49
  br i1 %63, label %71, label %51

64:                                               ; preds = %56
  %65 = icmp eq ptr %53, null
  br i1 %65, label %71, label %66

66:                                               ; preds = %64
  %67 = getelementptr inbounds %struct.hda_jack_tbl, ptr %53, i32 0, i32 5
  %68 = load i8, ptr %67, align 4
  %69 = and i8 %68, 4
  %70 = icmp eq i8 %69, 0
  br i1 %70, label %71, label %77

71:                                               ; preds = %66, %64, %60, %47, %41
  %72 = call i32 @snd_hda_jack_pin_sense(ptr noundef %0, i16 noundef zeroext %39, i32 noundef %43) #11
  %73 = icmp sgt i32 %72, -1
  br i1 %73, label %74, label %77

74:                                               ; preds = %71
  %75 = load i32, ptr %37, align 4
  %76 = and i32 %75, 2147483647
  store i32 %76, ptr %37, align 4
  br label %77

77:                                               ; preds = %74, %71, %66, %35
  %78 = load i8, ptr %4, align 4
  %79 = and i8 %78, -3
  store i8 %79, ptr %4, align 4
  %80 = getelementptr inbounds %struct.hda_jack_tbl, ptr %1, i32 0, i32 7
  %81 = load i16, ptr %80, align 4
  %82 = icmp eq i16 %81, 0
  br i1 %82, label %112, label %83

83:                                               ; preds = %77
  %84 = getelementptr inbounds %struct.hda_jack_tbl, ptr %1, i32 0, i32 1
  %85 = load i32, ptr %84, align 4
  %86 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 36, i32 4
  %87 = load ptr, ptr %86, align 8
  %88 = icmp eq ptr %87, null
  br i1 %88, label %112, label %89

89:                                               ; preds = %83
  %90 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 36
  %91 = load i32, ptr %90, align 8
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %112, label %93

93:                                               ; preds = %102, %89
  %94 = phi i32 [ %103, %102 ], [ 0, %89 ]
  %95 = phi ptr [ %104, %102 ], [ %87, %89 ]
  %96 = load i16, ptr %95, align 4
  %97 = icmp eq i16 %96, %81
  br i1 %97, label %98, label %102

98:                                               ; preds = %93
  %99 = getelementptr inbounds %struct.hda_jack_tbl, ptr %95, i32 0, i32 1
  %100 = load i32, ptr %99, align 4
  %101 = icmp eq i32 %100, %85
  br i1 %101, label %106, label %102

102:                                              ; preds = %98, %93
  %103 = add nuw i32 %94, 1
  %104 = getelementptr %struct.hda_jack_tbl, ptr %95, i32 1
  %105 = icmp eq i32 %103, %91
  br i1 %105, label %112, label %93

106:                                              ; preds = %98
  %107 = icmp eq ptr %95, null
  br i1 %107, label %112, label %108

108:                                              ; preds = %106
  %109 = getelementptr inbounds %struct.hda_jack_tbl, ptr %95, i32 0, i32 5
  %110 = load i8, ptr %109, align 4
  %111 = or i8 %110, 2
  store i8 %111, ptr %109, align 4
  call fastcc void @jack_detect_update(ptr noundef %0, ptr noundef nonnull %95)
  br label %112

112:                                              ; preds = %108, %106, %102, %89, %83, %77, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @snd_hda_jack_detect_state_mst(ptr noundef %0, i16 noundef zeroext %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 36, i32 4
  %5 = load ptr, ptr %4, align 8
  %6 = icmp ne i16 %1, 0
  %7 = icmp ne ptr %5, null
  %8 = select i1 %6, i1 %7, i1 false
  br i1 %8, label %9, label %33

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 36
  %11 = load i32, ptr %10, align 8
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %33, label %13

13:                                               ; preds = %22, %9
  %14 = phi i32 [ %23, %22 ], [ 0, %9 ]
  %15 = phi ptr [ %24, %22 ], [ %5, %9 ]
  %16 = load i16, ptr %15, align 4
  %17 = icmp eq i16 %16, %1
  br i1 %17, label %18, label %22

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.hda_jack_tbl, ptr %15, i32 0, i32 1
  %20 = load i32, ptr %19, align 4
  %21 = icmp eq i32 %20, %2
  br i1 %21, label %26, label %22

22:                                               ; preds = %18, %13
  %23 = add nuw i32 %14, 1
  %24 = getelementptr %struct.hda_jack_tbl, ptr %15, i32 1
  %25 = icmp eq i32 %23, %11
  br i1 %25, label %33, label %13

26:                                               ; preds = %18
  %27 = icmp eq ptr %15, null
  br i1 %27, label %33, label %28

28:                                               ; preds = %26
  %29 = getelementptr inbounds %struct.hda_jack_tbl, ptr %15, i32 0, i32 5
  %30 = load i8, ptr %29, align 4
  %31 = and i8 %30, 4
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %28, %26, %22, %9, %3
  %34 = tail call i32 @snd_hda_jack_pin_sense(ptr noundef %0, i16 noundef zeroext %1, i32 noundef %2)
  %35 = lshr i32 %34, 31
  br label %36

36:                                               ; preds = %33, %28
  %37 = phi i32 [ 2, %28 ], [ %35, %33 ]
  ret i32 %37
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @snd_hda_jack_detect_enable_callback_mst(ptr noundef %0, i16 noundef zeroext %1, i32 noundef %2, ptr noundef %3) #0 {
  %5 = tail call fastcc ptr @snd_hda_jack_tbl_new(ptr noundef %0, i16 noundef zeroext %1, i32 noundef %2)
  %6 = icmp eq ptr %5, null
  br i1 %6, label %57, label %7

7:                                                ; preds = %4
  %8 = icmp eq ptr %3, null
  br i1 %8, label %34, label %9

9:                                                ; preds = %7
  %10 = getelementptr inbounds %struct.hda_jack_tbl, ptr %5, i32 0, i32 3
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %22, label %13

13:                                               ; preds = %18, %9
  %14 = phi ptr [ %20, %18 ], [ %11, %9 ]
  %15 = getelementptr inbounds %struct.hda_jack_callback, ptr %14, i32 0, i32 2
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, %3
  br i1 %17, label %34, label %18

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.hda_jack_callback, ptr %14, i32 0, i32 6
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %13

22:                                               ; preds = %18, %9
  %23 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %24 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %23, i32 noundef 3520, i32 noundef 28) #12
  %25 = icmp eq ptr %24, null
  br i1 %25, label %57, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.hda_jack_callback, ptr %24, i32 0, i32 2
  store ptr %3, ptr %27, align 8
  %28 = load i16, ptr %5, align 4
  store i16 %28, ptr %24, align 8
  %29 = getelementptr inbounds %struct.hda_jack_tbl, ptr %5, i32 0, i32 1
  %30 = load i32, ptr %29, align 4
  %31 = getelementptr inbounds %struct.hda_jack_callback, ptr %24, i32 0, i32 1
  store i32 %30, ptr %31, align 4
  %32 = load ptr, ptr %10, align 4
  %33 = getelementptr inbounds %struct.hda_jack_callback, ptr %24, i32 0, i32 6
  store ptr %32, ptr %33, align 8
  store ptr %24, ptr %10, align 4
  br label %34

34:                                               ; preds = %26, %13, %7
  %35 = phi ptr [ %24, %26 ], [ null, %7 ], [ %14, %13 ]
  %36 = getelementptr inbounds %struct.hda_jack_tbl, ptr %5, i32 0, i32 5
  %37 = load i8, ptr %36, align 4
  %38 = and i8 %37, 1
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %40, label %57

40:                                               ; preds = %34
  %41 = or i8 %37, 1
  store i8 %41, ptr %36, align 4
  %42 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 37
  %43 = load i32, ptr %42, align 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %57

45:                                               ; preds = %40
  %46 = getelementptr inbounds %struct.hda_jack_tbl, ptr %5, i32 0, i32 2
  %47 = load i8, ptr %46, align 4
  %48 = or i8 %47, -128
  %49 = zext i8 %48 to i32
  %50 = zext i16 %1 to i32
  %51 = shl i32 %50, 20
  %52 = or i32 %51, 985088
  %53 = tail call i32 @snd_hdac_regmap_write_raw(ptr noundef %0, i32 noundef %52, i32 noundef %49) #11
  %54 = icmp slt i32 %53, 0
  %55 = inttoptr i32 %53 to ptr
  %56 = select i1 %54, ptr %55, ptr %35
  br label %57

57:                                               ; preds = %45, %40, %34, %22, %4
  %58 = phi ptr [ %35, %34 ], [ %35, %40 ], [ inttoptr (i32 -12 to ptr), %4 ], [ inttoptr (i32 -12 to ptr), %22 ], [ %56, %45 ]
  ret ptr %58
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @snd_hda_jack_tbl_new(ptr noundef %0, i16 noundef zeroext %1, i32 noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 36, i32 4
  %5 = load ptr, ptr %4, align 8
  %6 = icmp ne i16 %1, 0
  %7 = icmp ne ptr %5, null
  %8 = select i1 %6, i1 %7, i1 false
  br i1 %8, label %9, label %37

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 36
  %11 = load i32, ptr %10, align 8
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %37, label %13

13:                                               ; preds = %22, %9
  %14 = phi i32 [ %23, %22 ], [ 0, %9 ]
  %15 = phi ptr [ %24, %22 ], [ %5, %9 ]
  %16 = load i16, ptr %15, align 4
  %17 = icmp eq i16 %16, %1
  br i1 %17, label %18, label %22

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.hda_jack_tbl, ptr %15, i32 0, i32 1
  %20 = load i32, ptr %19, align 4
  %21 = icmp eq i32 %20, %2
  br i1 %21, label %26, label %22

22:                                               ; preds = %18, %13
  %23 = add nuw i32 %14, 1
  %24 = getelementptr %struct.hda_jack_tbl, ptr %15, i32 1
  %25 = icmp eq i32 %23, %11
  br i1 %25, label %26, label %13

26:                                               ; preds = %22, %18
  %27 = phi ptr [ %15, %18 ], [ null, %22 ]
  br i1 %12, label %37, label %28

28:                                               ; preds = %33, %26
  %29 = phi i32 [ %34, %33 ], [ 0, %26 ]
  %30 = phi ptr [ %35, %33 ], [ %5, %26 ]
  %31 = load i16, ptr %30, align 4
  %32 = icmp eq i16 %31, %1
  br i1 %32, label %37, label %33

33:                                               ; preds = %28
  %34 = add nuw i32 %29, 1
  %35 = getelementptr %struct.hda_jack_tbl, ptr %30, i32 1
  %36 = icmp eq i32 %34, %11
  br i1 %36, label %37, label %28

37:                                               ; preds = %33, %28, %26, %9, %3
  %38 = phi ptr [ %27, %26 ], [ null, %3 ], [ null, %9 ], [ %27, %33 ], [ %27, %28 ]
  %39 = phi ptr [ null, %26 ], [ null, %3 ], [ null, %9 ], [ %30, %28 ], [ null, %33 ]
  %40 = icmp eq i32 %2, 0
  br i1 %40, label %47, label %41

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 30
  %43 = load i32, ptr %42, align 8
  %44 = and i32 %43, 32768
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %47, !prof !9

46:                                               ; preds = %41
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 135, i32 noundef 9, ptr noundef null) #11
  br label %47

47:                                               ; preds = %46, %41, %37
  %48 = icmp eq ptr %38, null
  br i1 %48, label %49, label %72

49:                                               ; preds = %47
  %50 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 36
  %51 = tail call ptr @snd_array_new(ptr noundef %50) #11
  %52 = icmp eq ptr %51, null
  br i1 %52, label %72, label %53

53:                                               ; preds = %49
  store i16 %1, ptr %51, align 4
  %54 = getelementptr inbounds %struct.hda_jack_tbl, ptr %51, i32 0, i32 1
  store i32 %2, ptr %54, align 4
  %55 = getelementptr inbounds %struct.hda_jack_tbl, ptr %51, i32 0, i32 5
  %56 = load i8, ptr %55, align 4
  %57 = or i8 %56, 2
  store i8 %57, ptr %55, align 4
  %58 = icmp eq ptr %39, null
  br i1 %58, label %68, label %59

59:                                               ; preds = %53
  %60 = getelementptr inbounds %struct.hda_jack_tbl, ptr %39, i32 0, i32 2
  %61 = load i8, ptr %60, align 4
  %62 = getelementptr inbounds %struct.hda_jack_tbl, ptr %51, i32 0, i32 2
  store i8 %61, ptr %62, align 4
  %63 = getelementptr inbounds %struct.hda_jack_tbl, ptr %39, i32 0, i32 5
  %64 = load i8, ptr %63, align 4
  %65 = and i8 %64, 1
  %66 = and i8 %57, -2
  %67 = or i8 %65, %66
  store i8 %67, ptr %55, align 4
  br label %72

68:                                               ; preds = %53
  %69 = load i32, ptr %50, align 8
  %70 = trunc i32 %69 to i8
  %71 = getelementptr inbounds %struct.hda_jack_tbl, ptr %51, i32 0, i32 2
  store i8 %70, ptr %71, align 4
  br label %72

72:                                               ; preds = %68, %59, %49, %47
  %73 = phi ptr [ %38, %47 ], [ null, %49 ], [ %51, %68 ], [ %51, %59 ]
  ret ptr %73
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @snd_hda_jack_detect_enable(ptr noundef %0, i16 noundef zeroext %1, i32 noundef %2) #0 {
  %4 = tail call fastcc ptr @snd_hda_jack_tbl_new(ptr noundef %0, i16 noundef zeroext %1, i32 noundef %2) #11
  %5 = icmp eq ptr %4, null
  br i1 %5, label %28, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.hda_jack_tbl, ptr %4, i32 0, i32 5
  %8 = load i8, ptr %7, align 4
  %9 = and i8 %8, 1
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %28

11:                                               ; preds = %6
  %12 = or i8 %8, 1
  store i8 %12, ptr %7, align 4
  %13 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 37
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %28

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.hda_jack_tbl, ptr %4, i32 0, i32 2
  %18 = load i8, ptr %17, align 4
  %19 = or i8 %18, -128
  %20 = zext i8 %19 to i32
  %21 = zext i16 %1 to i32
  %22 = shl i32 %21, 20
  %23 = or i32 %22, 985088
  %24 = tail call i32 @snd_hdac_regmap_write_raw(ptr noundef %0, i32 noundef %23, i32 noundef %20) #11
  %25 = icmp slt i32 %24, 0
  %26 = inttoptr i32 %24 to ptr
  %27 = select i1 %25, ptr %26, ptr null
  br label %28

28:                                               ; preds = %16, %11, %6, %3
  %29 = phi ptr [ null, %6 ], [ null, %11 ], [ inttoptr (i32 -12 to ptr), %3 ], [ %27, %16 ]
  %30 = icmp ugt ptr %29, inttoptr (i32 -4096 to ptr)
  %31 = ptrtoint ptr %29 to i32
  %32 = select i1 %30, i32 %31, i32 0
  ret i32 %32
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @snd_hda_jack_set_gating_jack(ptr noundef %0, i16 noundef zeroext %1, i16 noundef zeroext %2) #0 {
  %4 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 36, i32 4
  %5 = load ptr, ptr %4, align 8
  %6 = icmp ne i16 %1, 0
  %7 = icmp ne ptr %5, null
  %8 = select i1 %6, i1 %7, i1 false
  br i1 %8, label %9, label %40

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 36
  %11 = load i32, ptr %10, align 8
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %40, label %13

13:                                               ; preds = %22, %9
  %14 = phi i32 [ %23, %22 ], [ 0, %9 ]
  %15 = phi ptr [ %24, %22 ], [ %5, %9 ]
  %16 = load i16, ptr %15, align 4
  %17 = icmp eq i16 %16, %1
  br i1 %17, label %18, label %22

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.hda_jack_tbl, ptr %15, i32 0, i32 1
  %20 = load i32, ptr %19, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %18, %13
  %23 = add nuw i32 %14, 1
  %24 = getelementptr %struct.hda_jack_tbl, ptr %15, i32 1
  %25 = icmp eq i32 %23, %11
  br i1 %25, label %26, label %13

26:                                               ; preds = %22, %18
  %27 = phi ptr [ %15, %18 ], [ null, %22 ]
  br label %28

28:                                               ; preds = %33, %26
  %29 = phi i32 [ %34, %33 ], [ 0, %26 ]
  %30 = phi ptr [ %35, %33 ], [ %5, %26 ]
  %31 = load i16, ptr %30, align 4
  %32 = icmp eq i16 %31, %1
  br i1 %32, label %37, label %33

33:                                               ; preds = %28
  %34 = add nuw i32 %29, 1
  %35 = getelementptr %struct.hda_jack_tbl, ptr %30, i32 1
  %36 = icmp eq i32 %34, %11
  br i1 %36, label %37, label %28

37:                                               ; preds = %33, %28
  %38 = phi ptr [ null, %33 ], [ %30, %28 ]
  %39 = icmp eq ptr %27, null
  br i1 %39, label %40, label %64

40:                                               ; preds = %37, %9, %3
  %41 = phi ptr [ %38, %37 ], [ null, %3 ], [ null, %9 ]
  %42 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 36
  %43 = tail call ptr @snd_array_new(ptr noundef %42) #11
  %44 = icmp eq ptr %43, null
  br i1 %44, label %64, label %45

45:                                               ; preds = %40
  store i16 %1, ptr %43, align 4
  %46 = getelementptr inbounds %struct.hda_jack_tbl, ptr %43, i32 0, i32 1
  store i32 0, ptr %46, align 4
  %47 = getelementptr inbounds %struct.hda_jack_tbl, ptr %43, i32 0, i32 5
  %48 = load i8, ptr %47, align 4
  %49 = or i8 %48, 2
  store i8 %49, ptr %47, align 4
  %50 = icmp eq ptr %41, null
  br i1 %50, label %60, label %51

51:                                               ; preds = %45
  %52 = getelementptr inbounds %struct.hda_jack_tbl, ptr %41, i32 0, i32 2
  %53 = load i8, ptr %52, align 4
  %54 = getelementptr inbounds %struct.hda_jack_tbl, ptr %43, i32 0, i32 2
  store i8 %53, ptr %54, align 4
  %55 = getelementptr inbounds %struct.hda_jack_tbl, ptr %41, i32 0, i32 5
  %56 = load i8, ptr %55, align 4
  %57 = and i8 %56, 1
  %58 = and i8 %49, -2
  %59 = or i8 %57, %58
  store i8 %59, ptr %47, align 4
  br label %64

60:                                               ; preds = %45
  %61 = load i32, ptr %42, align 8
  %62 = trunc i32 %61 to i8
  %63 = getelementptr inbounds %struct.hda_jack_tbl, ptr %43, i32 0, i32 2
  store i8 %62, ptr %63, align 4
  br label %64

64:                                               ; preds = %60, %51, %40, %37
  %65 = phi ptr [ %27, %37 ], [ null, %40 ], [ %43, %60 ], [ %43, %51 ]
  %66 = load ptr, ptr %4, align 8
  %67 = icmp ne i16 %2, 0
  %68 = icmp ne ptr %66, null
  %69 = select i1 %67, i1 %68, i1 false
  br i1 %69, label %70, label %101

70:                                               ; preds = %64
  %71 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 36
  %72 = load i32, ptr %71, align 8
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %101, label %74

74:                                               ; preds = %83, %70
  %75 = phi i32 [ %84, %83 ], [ 0, %70 ]
  %76 = phi ptr [ %85, %83 ], [ %66, %70 ]
  %77 = load i16, ptr %76, align 4
  %78 = icmp eq i16 %77, %2
  br i1 %78, label %79, label %83

79:                                               ; preds = %74
  %80 = getelementptr inbounds %struct.hda_jack_tbl, ptr %76, i32 0, i32 1
  %81 = load i32, ptr %80, align 4
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %87, label %83

83:                                               ; preds = %79, %74
  %84 = add nuw i32 %75, 1
  %85 = getelementptr %struct.hda_jack_tbl, ptr %76, i32 1
  %86 = icmp eq i32 %84, %72
  br i1 %86, label %87, label %74

87:                                               ; preds = %83, %79
  %88 = phi ptr [ %76, %79 ], [ null, %83 ]
  br label %89

89:                                               ; preds = %94, %87
  %90 = phi i32 [ %95, %94 ], [ 0, %87 ]
  %91 = phi ptr [ %96, %94 ], [ %66, %87 ]
  %92 = load i16, ptr %91, align 4
  %93 = icmp eq i16 %92, %2
  br i1 %93, label %98, label %94

94:                                               ; preds = %89
  %95 = add nuw i32 %90, 1
  %96 = getelementptr %struct.hda_jack_tbl, ptr %91, i32 1
  %97 = icmp eq i32 %95, %72
  br i1 %97, label %98, label %89

98:                                               ; preds = %94, %89
  %99 = phi ptr [ null, %94 ], [ %91, %89 ]
  %100 = icmp eq ptr %88, null
  br i1 %100, label %101, label %125

101:                                              ; preds = %98, %70, %64
  %102 = phi ptr [ %99, %98 ], [ null, %64 ], [ null, %70 ]
  %103 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 36
  %104 = tail call ptr @snd_array_new(ptr noundef %103) #11
  %105 = icmp eq ptr %104, null
  br i1 %105, label %125, label %106

106:                                              ; preds = %101
  store i16 %2, ptr %104, align 4
  %107 = getelementptr inbounds %struct.hda_jack_tbl, ptr %104, i32 0, i32 1
  store i32 0, ptr %107, align 4
  %108 = getelementptr inbounds %struct.hda_jack_tbl, ptr %104, i32 0, i32 5
  %109 = load i8, ptr %108, align 4
  %110 = or i8 %109, 2
  store i8 %110, ptr %108, align 4
  %111 = icmp eq ptr %102, null
  br i1 %111, label %121, label %112

112:                                              ; preds = %106
  %113 = getelementptr inbounds %struct.hda_jack_tbl, ptr %102, i32 0, i32 2
  %114 = load i8, ptr %113, align 4
  %115 = getelementptr inbounds %struct.hda_jack_tbl, ptr %104, i32 0, i32 2
  store i8 %114, ptr %115, align 4
  %116 = getelementptr inbounds %struct.hda_jack_tbl, ptr %102, i32 0, i32 5
  %117 = load i8, ptr %116, align 4
  %118 = and i8 %117, 1
  %119 = and i8 %110, -2
  %120 = or i8 %118, %119
  store i8 %120, ptr %108, align 4
  br label %125

121:                                              ; preds = %106
  %122 = load i32, ptr %103, align 8
  %123 = trunc i32 %122 to i8
  %124 = getelementptr inbounds %struct.hda_jack_tbl, ptr %104, i32 0, i32 2
  store i8 %123, ptr %124, align 4
  br label %125

125:                                              ; preds = %121, %112, %101, %98
  %126 = phi ptr [ %88, %98 ], [ null, %101 ], [ %104, %121 ], [ %104, %112 ]
  %127 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 30
  %128 = load i32, ptr %127, align 8
  %129 = and i32 %128, 32768
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %132, label %131, !prof !10

131:                                              ; preds = %125
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 390, i32 noundef 9, ptr noundef null) #11
  br label %132

132:                                              ; preds = %131, %125
  %133 = icmp ne ptr %65, null
  %134 = icmp ne ptr %126, null
  %135 = select i1 %133, i1 %134, i1 false
  br i1 %135, label %136, label %139

136:                                              ; preds = %132
  %137 = getelementptr inbounds %struct.hda_jack_tbl, ptr %65, i32 0, i32 6
  store i16 %2, ptr %137, align 2
  %138 = getelementptr inbounds %struct.hda_jack_tbl, ptr %126, i32 0, i32 7
  store i16 %1, ptr %138, align 4
  br label %139

139:                                              ; preds = %136, %132
  %140 = phi i32 [ 0, %136 ], [ -22, %132 ]
  ret i32 %140
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @snd_hda_jack_bind_keymap(ptr nocapture noundef readonly %0, i16 noundef zeroext %1, ptr noundef readonly %2, i16 noundef zeroext %3) #0 {
  %5 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 36, i32 4
  %6 = load ptr, ptr %5, align 8
  %7 = icmp ne i16 %1, 0
  %8 = icmp ne ptr %6, null
  %9 = select i1 %7, i1 %8, i1 false
  br i1 %9, label %10, label %27

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 36
  %12 = load i32, ptr %11, align 8
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %27, label %14

14:                                               ; preds = %23, %10
  %15 = phi i32 [ %24, %23 ], [ 0, %10 ]
  %16 = phi ptr [ %25, %23 ], [ %6, %10 ]
  %17 = load i16, ptr %16, align 4
  %18 = icmp eq i16 %17, %1
  br i1 %18, label %19, label %23

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.hda_jack_tbl, ptr %16, i32 0, i32 1
  %21 = load i32, ptr %20, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %19, %14
  %24 = add nuw i32 %15, 1
  %25 = getelementptr %struct.hda_jack_tbl, ptr %16, i32 1
  %26 = icmp eq i32 %24, %12
  br i1 %26, label %27, label %14

27:                                               ; preds = %23, %19, %10, %4
  %28 = phi ptr [ null, %4 ], [ null, %10 ], [ %16, %19 ], [ null, %23 ]
  %29 = icmp ne i16 %3, 0
  %30 = select i1 %29, i1 %8, i1 false
  br i1 %30, label %31, label %48

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 36
  %33 = load i32, ptr %32, align 8
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %48, label %35

35:                                               ; preds = %44, %31
  %36 = phi i32 [ %45, %44 ], [ 0, %31 ]
  %37 = phi ptr [ %46, %44 ], [ %6, %31 ]
  %38 = load i16, ptr %37, align 4
  %39 = icmp eq i16 %38, %3
  br i1 %39, label %40, label %44

40:                                               ; preds = %35
  %41 = getelementptr inbounds %struct.hda_jack_tbl, ptr %37, i32 0, i32 1
  %42 = load i32, ptr %41, align 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %48, label %44

44:                                               ; preds = %40, %35
  %45 = add nuw i32 %36, 1
  %46 = getelementptr %struct.hda_jack_tbl, ptr %37, i32 1
  %47 = icmp eq i32 %45, %33
  br i1 %47, label %48, label %35

48:                                               ; preds = %44, %40, %31, %27
  %49 = phi ptr [ null, %27 ], [ null, %31 ], [ %37, %40 ], [ null, %44 ]
  %50 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 30
  %51 = load i32, ptr %50, align 8
  %52 = and i32 %51, 32768
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %55, label %54, !prof !10

54:                                               ; preds = %48
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 420, i32 noundef 9, ptr noundef null) #11
  br label %55

55:                                               ; preds = %54, %48
  %56 = icmp ne ptr %28, null
  %57 = icmp ne ptr %49, null
  %58 = and i1 %56, %57
  br i1 %58, label %59, label %79

59:                                               ; preds = %55
  %60 = getelementptr inbounds %struct.hda_jack_tbl, ptr %49, i32 0, i32 11
  %61 = load ptr, ptr %60, align 4
  %62 = icmp eq ptr %61, null
  br i1 %62, label %79, label %63

63:                                               ; preds = %59
  %64 = getelementptr inbounds %struct.hda_jack_tbl, ptr %28, i32 0, i32 8
  store i16 %3, ptr %64, align 2
  %65 = icmp eq ptr %2, null
  br i1 %65, label %79, label %66

66:                                               ; preds = %63
  %67 = load i32, ptr %2, align 4
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %79, label %69

69:                                               ; preds = %69, %66
  %70 = phi i32 [ %77, %69 ], [ %67, %66 ]
  %71 = phi ptr [ %76, %69 ], [ %2, %66 ]
  %72 = load ptr, ptr %60, align 4
  %73 = getelementptr inbounds %struct.hda_jack_keymap, ptr %71, i32 0, i32 1
  %74 = load i32, ptr %73, align 4
  %75 = tail call i32 @snd_jack_set_key(ptr noundef %72, i32 noundef %70, i32 noundef %74) #11
  %76 = getelementptr %struct.hda_jack_keymap, ptr %71, i32 1
  %77 = load i32, ptr %76, align 4
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %69

79:                                               ; preds = %69, %66, %63, %59, %55
  %80 = phi i32 [ -22, %59 ], [ -22, %55 ], [ 0, %63 ], [ 0, %66 ], [ 0, %69 ]
  ret i32 %80
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_jack_set_key(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @snd_hda_jack_set_button_state(ptr nocapture noundef readonly %0, i16 noundef zeroext %1, i32 noundef %2) #4 {
  %4 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 36, i32 4
  %5 = load ptr, ptr %4, align 8
  %6 = icmp ne i16 %1, 0
  %7 = icmp ne ptr %5, null
  %8 = select i1 %6, i1 %7, i1 false
  br i1 %8, label %9, label %51

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 36
  %11 = load i32, ptr %10, align 8
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %51, label %13

13:                                               ; preds = %22, %9
  %14 = phi i32 [ %23, %22 ], [ 0, %9 ]
  %15 = phi ptr [ %24, %22 ], [ %5, %9 ]
  %16 = load i16, ptr %15, align 4
  %17 = icmp eq i16 %16, %1
  br i1 %17, label %18, label %22

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.hda_jack_tbl, ptr %15, i32 0, i32 1
  %20 = load i32, ptr %19, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %18, %13
  %23 = add nuw i32 %14, 1
  %24 = getelementptr %struct.hda_jack_tbl, ptr %15, i32 1
  %25 = icmp eq i32 %23, %11
  br i1 %25, label %51, label %13

26:                                               ; preds = %18
  %27 = icmp eq ptr %15, null
  br i1 %27, label %51, label %28

28:                                               ; preds = %26
  %29 = getelementptr inbounds %struct.hda_jack_tbl, ptr %15, i32 0, i32 8
  %30 = load i16, ptr %29, align 2
  %31 = icmp eq i16 %30, 0
  br i1 %31, label %47, label %32

32:                                               ; preds = %41, %28
  %33 = phi i32 [ %42, %41 ], [ 0, %28 ]
  %34 = phi ptr [ %43, %41 ], [ %5, %28 ]
  %35 = load i16, ptr %34, align 4
  %36 = icmp eq i16 %35, %30
  br i1 %36, label %37, label %41

37:                                               ; preds = %32
  %38 = getelementptr inbounds %struct.hda_jack_tbl, ptr %34, i32 0, i32 1
  %39 = load i32, ptr %38, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %45, label %41

41:                                               ; preds = %37, %32
  %42 = add nuw i32 %33, 1
  %43 = getelementptr %struct.hda_jack_tbl, ptr %34, i32 1
  %44 = icmp eq i32 %42, %11
  br i1 %44, label %47, label %32

45:                                               ; preds = %37
  %46 = icmp eq ptr %34, null
  br i1 %46, label %47, label %48

47:                                               ; preds = %45, %41, %28
  br label %48

48:                                               ; preds = %47, %45
  %49 = phi ptr [ %15, %47 ], [ %34, %45 ]
  %50 = getelementptr inbounds %struct.hda_jack_tbl, ptr %49, i32 0, i32 10
  store i32 %2, ptr %50, align 4
  br label %51

51:                                               ; preds = %48, %26, %22, %9, %3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @snd_hda_jack_report_sync(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 36
  %3 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 36, i32 4
  %4 = load i32, ptr %2, align 8
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %62, label %6

6:                                                ; preds = %1
  %7 = load ptr, ptr %3, align 8
  br label %8

8:                                                ; preds = %16, %6
  %9 = phi i32 [ %17, %16 ], [ %4, %6 ]
  %10 = phi i32 [ %18, %16 ], [ 0, %6 ]
  %11 = phi ptr [ %19, %16 ], [ %7, %6 ]
  %12 = load i16, ptr %11, align 4
  %13 = icmp eq i16 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %8
  tail call fastcc void @jack_detect_update(ptr noundef %0, ptr noundef %11)
  %15 = load i32, ptr %2, align 8
  br label %16

16:                                               ; preds = %14, %8
  %17 = phi i32 [ %9, %8 ], [ %15, %14 ]
  %18 = add nuw i32 %10, 1
  %19 = getelementptr %struct.hda_jack_tbl, ptr %11, i32 1
  %20 = icmp ult i32 %18, %17
  br i1 %20, label %8, label %21

21:                                               ; preds = %16
  %22 = icmp eq i32 %17, 0
  br i1 %22, label %62, label %23

23:                                               ; preds = %21
  %24 = load ptr, ptr %3, align 8
  br label %25

25:                                               ; preds = %57, %23
  %26 = phi i32 [ %58, %57 ], [ 0, %23 ]
  %27 = phi ptr [ %59, %57 ], [ %24, %23 ]
  %28 = load i16, ptr %27, align 4
  %29 = icmp eq i16 %28, 0
  br i1 %29, label %57, label %30

30:                                               ; preds = %25
  %31 = getelementptr inbounds %struct.hda_jack_tbl, ptr %27, i32 0, i32 11
  %32 = load ptr, ptr %31, align 4
  %33 = icmp eq ptr %32, null
  br i1 %33, label %57, label %34

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.hda_jack_tbl, ptr %27, i32 0, i32 5
  %36 = load i8, ptr %35, align 4
  %37 = and i8 %36, 8
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %39, label %57

39:                                               ; preds = %34
  %40 = getelementptr inbounds %struct.hda_jack_tbl, ptr %27, i32 0, i32 10
  %41 = load i32, ptr %40, align 4
  %42 = getelementptr inbounds %struct.hda_jack_tbl, ptr %27, i32 0, i32 4
  %43 = load i32, ptr %42, align 4
  %44 = icmp sgt i32 %43, -1
  br i1 %44, label %49, label %45

45:                                               ; preds = %39
  %46 = getelementptr inbounds %struct.hda_jack_tbl, ptr %27, i32 0, i32 9
  %47 = load i32, ptr %46, align 4
  %48 = or i32 %47, %41
  br label %49

49:                                               ; preds = %45, %39
  %50 = phi i32 [ %48, %45 ], [ %41, %39 ]
  tail call void @snd_jack_report(ptr noundef nonnull %32, i32 noundef %50) #11
  %51 = load i32, ptr %40, align 4
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %57, label %53

53:                                               ; preds = %49
  %54 = load ptr, ptr %31, align 4
  %55 = xor i32 %51, -1
  %56 = and i32 %50, %55
  tail call void @snd_jack_report(ptr noundef %54, i32 noundef %56) #11
  store i32 0, ptr %40, align 4
  br label %57

57:                                               ; preds = %53, %49, %34, %30, %25
  %58 = add nuw i32 %26, 1
  %59 = getelementptr %struct.hda_jack_tbl, ptr %27, i32 1
  %60 = load i32, ptr %2, align 8
  %61 = icmp ult i32 %58, %60
  br i1 %61, label %25, label %62

62:                                               ; preds = %57, %21, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_jack_report(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @snd_hda_jack_add_kctl_mst(ptr noundef %0, i16 noundef zeroext %1, i32 noundef %2, ptr noundef %3, i1 noundef zeroext %4, i32 noundef %5, ptr noundef readonly %6) #0 {
  %8 = tail call fastcc ptr @snd_hda_jack_tbl_new(ptr noundef %0, i16 noundef zeroext %1, i32 noundef %2)
  %9 = icmp eq ptr %8, null
  br i1 %9, label %112, label %10

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.hda_jack_tbl, ptr %8, i32 0, i32 11
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %112

14:                                               ; preds = %10
  %15 = icmp eq i32 %5, 0
  br i1 %15, label %16, label %24

16:                                               ; preds = %14
  %17 = tail call i32 @snd_hda_codec_get_pincfg(ptr noundef %0, i16 noundef zeroext %1) #11
  %18 = lshr i32 %17, 20
  %19 = and i32 %18, 15
  %20 = icmp ult i32 %19, 11
  br i1 %20, label %21, label %24

21:                                               ; preds = %16
  %22 = getelementptr inbounds [11 x i32], ptr @switch.table.snd_hda_jack_add_kctl_mst, i32 0, i32 %19
  %23 = load i32, ptr %22, align 4
  br label %24

24:                                               ; preds = %21, %16, %14
  %25 = phi i32 [ %5, %14 ], [ %23, %21 ], [ 32, %16 ]
  %26 = icmp eq ptr %6, null
  br i1 %26, label %38, label %27

27:                                               ; preds = %24
  %28 = load i32, ptr %6, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %38, label %30

30:                                               ; preds = %30, %27
  %31 = phi i32 [ %36, %30 ], [ %28, %27 ]
  %32 = phi i32 [ %34, %30 ], [ 0, %27 ]
  %33 = phi ptr [ %35, %30 ], [ %6, %27 ]
  %34 = or i32 %31, %32
  %35 = getelementptr %struct.hda_jack_keymap, ptr %33, i32 1
  %36 = load i32, ptr %35, align 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %30

38:                                               ; preds = %30, %27, %24
  %39 = phi i32 [ 0, %24 ], [ 0, %27 ], [ %34, %30 ]
  %40 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 2
  %41 = load ptr, ptr %40, align 4
  %42 = or i32 %39, %25
  %43 = tail call i32 @snd_jack_new(ptr noundef %41, ptr noundef %3, i32 noundef %42, ptr noundef %11, i1 noundef zeroext true, i1 noundef zeroext %4) #11
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %112, label %45

45:                                               ; preds = %38
  %46 = getelementptr inbounds %struct.hda_jack_tbl, ptr %8, i32 0, i32 5
  %47 = load i8, ptr %46, align 4
  %48 = select i1 %4, i8 4, i8 0
  %49 = and i8 %47, -5
  %50 = or i8 %49, %48
  store i8 %50, ptr %46, align 4
  %51 = getelementptr inbounds %struct.hda_jack_tbl, ptr %8, i32 0, i32 9
  store i32 %25, ptr %51, align 4
  %52 = getelementptr inbounds %struct.hda_jack_tbl, ptr %8, i32 0, i32 10
  store i32 0, ptr %52, align 4
  %53 = load ptr, ptr %11, align 4
  %54 = getelementptr inbounds %struct.snd_jack, ptr %53, i32 0, i32 9
  store ptr %8, ptr %54, align 4
  %55 = load ptr, ptr %11, align 4
  %56 = getelementptr inbounds %struct.snd_jack, ptr %55, i32 0, i32 10
  store ptr @hda_free_jack_priv, ptr %56, align 4
  br i1 %26, label %70, label %57

57:                                               ; preds = %45
  %58 = load i32, ptr %6, align 4
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %70, label %60

60:                                               ; preds = %60, %57
  %61 = phi i32 [ %68, %60 ], [ %58, %57 ]
  %62 = phi ptr [ %67, %60 ], [ %6, %57 ]
  %63 = load ptr, ptr %11, align 4
  %64 = getelementptr inbounds %struct.hda_jack_keymap, ptr %62, i32 0, i32 1
  %65 = load i32, ptr %64, align 4
  %66 = tail call i32 @snd_jack_set_key(ptr noundef %63, i32 noundef %61, i32 noundef %65) #11
  %67 = getelementptr %struct.hda_jack_keymap, ptr %62, i32 1
  %68 = load i32, ptr %67, align 4
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %60

70:                                               ; preds = %60, %57, %45
  %71 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 36, i32 4
  %72 = load ptr, ptr %71, align 8
  %73 = icmp ne i16 %1, 0
  %74 = icmp ne ptr %72, null
  %75 = select i1 %73, i1 %74, i1 false
  br i1 %75, label %76, label %102

76:                                               ; preds = %70
  %77 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 36
  %78 = load i32, ptr %77, align 8
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %102, label %80

80:                                               ; preds = %89, %76
  %81 = phi i32 [ %90, %89 ], [ 0, %76 ]
  %82 = phi ptr [ %91, %89 ], [ %72, %76 ]
  %83 = load i16, ptr %82, align 4
  %84 = icmp eq i16 %83, %1
  br i1 %84, label %85, label %89

85:                                               ; preds = %80
  %86 = getelementptr inbounds %struct.hda_jack_tbl, ptr %82, i32 0, i32 1
  %87 = load i32, ptr %86, align 4
  %88 = icmp eq i32 %87, %2
  br i1 %88, label %93, label %89

89:                                               ; preds = %85, %80
  %90 = add nuw i32 %81, 1
  %91 = getelementptr %struct.hda_jack_tbl, ptr %82, i32 1
  %92 = icmp eq i32 %90, %78
  br i1 %92, label %102, label %80

93:                                               ; preds = %85
  %94 = icmp eq ptr %82, null
  br i1 %94, label %102, label %95

95:                                               ; preds = %93
  %96 = getelementptr inbounds %struct.hda_jack_tbl, ptr %82, i32 0, i32 5
  %97 = load i8, ptr %96, align 4
  %98 = and i8 %97, 4
  %99 = icmp eq i8 %98, 0
  br i1 %99, label %102, label %100

100:                                              ; preds = %95
  %101 = load ptr, ptr %11, align 4
  br label %106

102:                                              ; preds = %95, %93, %89, %76, %70
  %103 = tail call i32 @snd_hda_jack_pin_sense(ptr noundef %0, i16 noundef zeroext %1, i32 noundef %2) #11
  %104 = icmp slt i32 %103, 0
  %105 = load ptr, ptr %11, align 4
  br i1 %104, label %106, label %109

106:                                              ; preds = %102, %100
  %107 = phi ptr [ %101, %100 ], [ %105, %102 ]
  %108 = load i32, ptr %51, align 4
  br label %109

109:                                              ; preds = %106, %102
  %110 = phi ptr [ %107, %106 ], [ %105, %102 ]
  %111 = phi i32 [ %108, %106 ], [ 0, %102 ]
  tail call void @snd_jack_report(ptr noundef %110, i32 noundef %111) #11
  br label %112

112:                                              ; preds = %109, %38, %10, %7
  %113 = phi i32 [ 0, %109 ], [ 0, %7 ], [ 0, %10 ], [ %43, %38 ]
  ret i32 %113
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_jack_new(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @hda_free_jack_priv(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.snd_jack, ptr %0, i32 0, i32 9
  %3 = load ptr, ptr %2, align 4
  store i16 0, ptr %3, align 4
  %4 = getelementptr inbounds %struct.hda_jack_tbl, ptr %3, i32 0, i32 11
  store ptr null, ptr %4, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @snd_hda_jack_add_kctls(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.auto_pin_cfg, ptr %1, i32 0, i32 7
  %4 = load i32, ptr %3, align 4
  %5 = icmp sgt i32 %4, 0
  br i1 %5, label %6, label %41

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.auto_pin_cfg, ptr %1, i32 0, i32 5
  %8 = getelementptr inbounds %struct.auto_pin_cfg, ptr %1, i32 0, i32 4
  %9 = getelementptr inbounds %struct.auto_pin_cfg, ptr %1, i32 0, i32 1
  %10 = getelementptr inbounds %struct.auto_pin_cfg, ptr %1, i32 0, i32 6
  br label %15

11:                                               ; preds = %38
  %12 = add nuw nsw i32 %16, 1
  %13 = load i32, ptr %3, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %41

15:                                               ; preds = %11, %6
  %16 = phi i32 [ 0, %6 ], [ %12, %11 ]
  %17 = getelementptr %struct.auto_pin_cfg, ptr %1, i32 0, i32 8, i32 %16
  %18 = getelementptr %struct.auto_pin_cfg, ptr %1, i32 0, i32 8, i32 %16, i32 2
  %19 = load i8, ptr %18, align 4
  %20 = and i8 %19, 2
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %35, label %22

22:                                               ; preds = %15
  %23 = load i32, ptr %7, align 4
  %24 = icmp eq i32 %23, 2
  %25 = select i1 %24, ptr %1, ptr %8
  %26 = load i32, ptr %25, align 4
  %27 = icmp eq i32 %26, 1
  br i1 %27, label %28, label %32

28:                                               ; preds = %22
  %29 = select i1 %24, ptr %9, ptr %10
  %30 = load i16, ptr %29, align 2
  %31 = tail call fastcc i32 @add_jack_kctl(ptr noundef %0, i16 noundef zeroext %30, ptr noundef %1, ptr noundef nonnull @.str.1)
  br label %38

32:                                               ; preds = %22
  %33 = load i16, ptr %17, align 4
  %34 = tail call fastcc i32 @add_jack_kctl(ptr noundef %0, i16 noundef zeroext %33, ptr noundef %1, ptr noundef nonnull @.str.1)
  br label %38

35:                                               ; preds = %15
  %36 = load i16, ptr %17, align 4
  %37 = tail call fastcc i32 @add_jack_kctl(ptr noundef %0, i16 noundef zeroext %36, ptr noundef %1, ptr noundef null)
  br label %38

38:                                               ; preds = %35, %32, %28
  %39 = phi i32 [ %31, %28 ], [ %34, %32 ], [ %37, %35 ]
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %123, label %11

41:                                               ; preds = %11, %2
  %42 = getelementptr inbounds %struct.auto_pin_cfg, ptr %1, i32 0, i32 1
  %43 = load i32, ptr %1, align 4
  %44 = icmp sgt i32 %43, 0
  br i1 %44, label %45, label %56

45:                                               ; preds = %51, %41
  %46 = phi i32 [ %52, %51 ], [ 0, %41 ]
  %47 = phi ptr [ %53, %51 ], [ %42, %41 ]
  %48 = load i16, ptr %47, align 2
  %49 = tail call fastcc i32 @add_jack_kctl(ptr noundef %0, i16 noundef zeroext %48, ptr noundef %1, ptr noundef null)
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %123, label %51

51:                                               ; preds = %45
  %52 = add nuw nsw i32 %46, 1
  %53 = getelementptr i16, ptr %47, i32 1
  %54 = load i32, ptr %1, align 4
  %55 = icmp slt i32 %52, %54
  br i1 %55, label %45, label %56

56:                                               ; preds = %51, %41
  %57 = getelementptr inbounds %struct.auto_pin_cfg, ptr %1, i32 0, i32 4
  %58 = load i32, ptr %57, align 4
  %59 = icmp sgt i32 %58, 0
  br i1 %59, label %60, label %76

60:                                               ; preds = %56
  %61 = getelementptr inbounds %struct.auto_pin_cfg, ptr %1, i32 0, i32 6
  br label %62

62:                                               ; preds = %71, %60
  %63 = phi i32 [ %72, %71 ], [ 0, %60 ]
  %64 = phi ptr [ %73, %71 ], [ %61, %60 ]
  %65 = load i16, ptr %64, align 2
  %66 = load i16, ptr %42, align 4
  %67 = icmp eq i16 %65, %66
  br i1 %67, label %76, label %68

68:                                               ; preds = %62
  %69 = tail call fastcc i32 @add_jack_kctl(ptr noundef %0, i16 noundef zeroext %65, ptr noundef %1, ptr noundef null)
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %123, label %71

71:                                               ; preds = %68
  %72 = add nuw nsw i32 %63, 1
  %73 = getelementptr i16, ptr %64, i32 1
  %74 = load i32, ptr %57, align 4
  %75 = icmp slt i32 %72, %74
  br i1 %75, label %62, label %76

76:                                               ; preds = %71, %62, %56
  %77 = getelementptr inbounds %struct.auto_pin_cfg, ptr %1, i32 0, i32 2
  %78 = load i32, ptr %77, align 4
  %79 = icmp sgt i32 %78, 0
  br i1 %79, label %80, label %96

80:                                               ; preds = %76
  %81 = getelementptr inbounds %struct.auto_pin_cfg, ptr %1, i32 0, i32 3
  br label %82

82:                                               ; preds = %91, %80
  %83 = phi i32 [ %92, %91 ], [ 0, %80 ]
  %84 = phi ptr [ %93, %91 ], [ %81, %80 ]
  %85 = load i16, ptr %84, align 2
  %86 = load i16, ptr %42, align 4
  %87 = icmp eq i16 %85, %86
  br i1 %87, label %96, label %88

88:                                               ; preds = %82
  %89 = tail call fastcc i32 @add_jack_kctl(ptr noundef %0, i16 noundef zeroext %85, ptr noundef %1, ptr noundef null)
  %90 = icmp slt i32 %89, 0
  br i1 %90, label %123, label %91

91:                                               ; preds = %88
  %92 = add nuw nsw i32 %83, 1
  %93 = getelementptr i16, ptr %84, i32 1
  %94 = load i32, ptr %77, align 4
  %95 = icmp slt i32 %92, %94
  br i1 %95, label %82, label %96

96:                                               ; preds = %91, %82, %76
  %97 = getelementptr inbounds %struct.auto_pin_cfg, ptr %1, i32 0, i32 9
  %98 = load i32, ptr %97, align 4
  %99 = icmp sgt i32 %98, 0
  br i1 %99, label %100, label %113

100:                                              ; preds = %96
  %101 = getelementptr inbounds %struct.auto_pin_cfg, ptr %1, i32 0, i32 10
  br label %102

102:                                              ; preds = %108, %100
  %103 = phi i32 [ %109, %108 ], [ 0, %100 ]
  %104 = phi ptr [ %110, %108 ], [ %101, %100 ]
  %105 = load i16, ptr %104, align 2
  %106 = tail call fastcc i32 @add_jack_kctl(ptr noundef %0, i16 noundef zeroext %105, ptr noundef %1, ptr noundef null)
  %107 = icmp slt i32 %106, 0
  br i1 %107, label %123, label %108

108:                                              ; preds = %102
  %109 = add nuw nsw i32 %103, 1
  %110 = getelementptr i16, ptr %104, i32 1
  %111 = load i32, ptr %97, align 4
  %112 = icmp slt i32 %109, %111
  br i1 %112, label %102, label %113

113:                                              ; preds = %108, %96
  %114 = getelementptr inbounds %struct.auto_pin_cfg, ptr %1, i32 0, i32 11
  %115 = load i16, ptr %114, align 4
  %116 = tail call fastcc i32 @add_jack_kctl(ptr noundef %0, i16 noundef zeroext %115, ptr noundef %1, ptr noundef null)
  %117 = icmp slt i32 %116, 0
  br i1 %117, label %123, label %118

118:                                              ; preds = %113
  %119 = getelementptr inbounds %struct.auto_pin_cfg, ptr %1, i32 0, i32 12
  %120 = load i16, ptr %119, align 2
  %121 = tail call fastcc i32 @add_jack_kctl(ptr noundef %0, i16 noundef zeroext %120, ptr noundef %1, ptr noundef null)
  %122 = tail call i32 @llvm.smin.i32(i32 %121, i32 0)
  br label %123

123:                                              ; preds = %118, %113, %102, %88, %68, %45, %38
  %124 = phi i32 [ %116, %113 ], [ %122, %118 ], [ %106, %102 ], [ %89, %88 ], [ %69, %68 ], [ %49, %45 ], [ %39, %38 ]
  ret i32 %124
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @add_jack_kctl(ptr noundef %0, i16 noundef zeroext %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 {
  %5 = alloca i32, align 4
  %6 = alloca [44 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %6) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(44) %6, i8 0, i32 44, i1 false), !annotation !8
  %7 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 30
  %8 = load i32, ptr %7, align 8
  %9 = and i32 %8, 32768
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %12, label %11, !prof !10

11:                                               ; preds = %4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 595, i32 noundef 9, ptr noundef null) #11
  br label %12

12:                                               ; preds = %11, %4
  %13 = icmp eq i16 %1, 0
  br i1 %13, label %166, label %14

14:                                               ; preds = %12
  %15 = tail call i32 @snd_hda_codec_get_pincfg(ptr noundef %0, i16 noundef zeroext %1) #11
  %16 = and i32 %15, -1073741824
  %17 = icmp eq i32 %16, 1073741824
  br i1 %17, label %166, label %18

18:                                               ; preds = %14
  %19 = icmp ult i32 %15, 1073741824
  br i1 %19, label %20, label %59

20:                                               ; preds = %18
  %21 = load i32, ptr %7, align 8
  %22 = and i32 %21, 1024
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %59

24:                                               ; preds = %20
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #11
  store i32 0, ptr %5, align 4, !annotation !8
  %25 = call i32 @_snd_hdac_read_parm(ptr noundef %0, i16 noundef zeroext %1, i32 noundef 12, ptr noundef nonnull %5) #11
  %26 = load i32, ptr %5, align 4
  %27 = icmp sgt i32 %25, -1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #11
  %28 = and i32 %26, 4
  %29 = icmp eq i32 %28, 0
  %30 = select i1 %27, i1 %29, i1 false
  br i1 %30, label %59, label %31

31:                                               ; preds = %24
  %32 = call i32 @snd_hda_codec_get_pincfg(ptr noundef %0, i16 noundef zeroext %1) #11
  %33 = and i32 %32, 256
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %59

35:                                               ; preds = %31
  %36 = zext i16 %1 to i32
  %37 = getelementptr inbounds %struct.hdac_device, ptr %0, i32 0, i32 18
  %38 = load i16, ptr %37, align 4
  %39 = zext i16 %38 to i32
  %40 = icmp ugt i16 %38, %1
  br i1 %40, label %54, label %41

41:                                               ; preds = %35
  %42 = getelementptr inbounds %struct.hdac_device, ptr %0, i32 0, i32 17
  %43 = load i32, ptr %42, align 8
  %44 = add i32 %43, %39
  %45 = icmp ugt i32 %44, %36
  br i1 %45, label %46, label %54

46:                                               ; preds = %41
  %47 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 14
  %48 = load ptr, ptr %47, align 4
  %49 = sub nsw i32 %36, %39
  %50 = getelementptr i32, ptr %48, i32 %49
  %51 = load i32, ptr %50, align 4
  %52 = and i32 %51, 128
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %46, %41, %35
  %55 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 37
  %56 = load i32, ptr %55, align 4
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %59, label %58

58:                                               ; preds = %54, %46
  br label %59

59:                                               ; preds = %58, %54, %31, %24, %20, %18
  %60 = phi i1 [ true, %18 ], [ false, %58 ], [ true, %20 ], [ true, %24 ], [ true, %31 ], [ true, %54 ]
  %61 = icmp eq ptr %3, null
  br i1 %61, label %64, label %62

62:                                               ; preds = %59
  %63 = call i32 @strscpy(ptr noundef nonnull %6, ptr noundef nonnull %3, i32 noundef 44) #11
  br label %66

64:                                               ; preds = %59
  %65 = call i32 @snd_hda_get_pin_label(ptr noundef %0, i16 noundef zeroext %1, ptr noundef %2, ptr noundef nonnull %6, i32 noundef 44, ptr noundef null) #11
  br label %66

66:                                               ; preds = %64, %62
  br i1 %60, label %67, label %71

67:                                               ; preds = %66
  %68 = call i32 @strlen(ptr noundef nonnull %6)
  %69 = sub i32 43, %68
  %70 = call ptr @strncat(ptr noundef nonnull %6, ptr noundef nonnull @.str.2, i32 noundef %69)
  br label %71

71:                                               ; preds = %67, %66
  %72 = call i32 @snd_hda_jack_add_kctl_mst(ptr noundef %0, i16 noundef zeroext %1, i32 noundef 0, ptr noundef nonnull %6, i1 noundef zeroext %60, i32 noundef 0, ptr noundef null) #11
  %73 = icmp slt i32 %72, 0
  %74 = or i1 %60, %73
  %75 = call i32 @llvm.smin.i32(i32 %72, i32 0)
  br i1 %74, label %166, label %76

76:                                               ; preds = %71
  %77 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 36, i32 4
  %78 = load ptr, ptr %77, align 8
  %79 = icmp eq ptr %78, null
  br i1 %79, label %114, label %80

80:                                               ; preds = %76
  %81 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 36
  %82 = load i32, ptr %81, align 8
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %114, label %84

84:                                               ; preds = %93, %80
  %85 = phi i32 [ %94, %93 ], [ 0, %80 ]
  %86 = phi ptr [ %95, %93 ], [ %78, %80 ]
  %87 = load i16, ptr %86, align 4
  %88 = icmp eq i16 %87, %1
  br i1 %88, label %89, label %93

89:                                               ; preds = %84
  %90 = getelementptr inbounds %struct.hda_jack_tbl, ptr %86, i32 0, i32 1
  %91 = load i32, ptr %90, align 4
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %97, label %93

93:                                               ; preds = %89, %84
  %94 = add nuw i32 %85, 1
  %95 = getelementptr %struct.hda_jack_tbl, ptr %86, i32 1
  %96 = icmp eq i32 %94, %82
  br i1 %96, label %97, label %84

97:                                               ; preds = %93, %89
  %98 = phi ptr [ %86, %89 ], [ null, %93 ]
  br label %99

99:                                               ; preds = %104, %97
  %100 = phi i32 [ %105, %104 ], [ 0, %97 ]
  %101 = phi ptr [ %106, %104 ], [ %78, %97 ]
  %102 = load i16, ptr %101, align 4
  %103 = icmp eq i16 %102, %1
  br i1 %103, label %108, label %104

104:                                              ; preds = %99
  %105 = add nuw i32 %100, 1
  %106 = getelementptr %struct.hda_jack_tbl, ptr %101, i32 1
  %107 = icmp eq i32 %105, %82
  br i1 %107, label %108, label %99

108:                                              ; preds = %104, %99
  %109 = phi ptr [ null, %104 ], [ %101, %99 ]
  %110 = icmp eq ptr %98, null
  br i1 %110, label %114, label %111

111:                                              ; preds = %108
  %112 = getelementptr inbounds %struct.hda_jack_tbl, ptr %98, i32 0, i32 5
  %113 = load i8, ptr %112, align 4
  br label %138

114:                                              ; preds = %108, %80, %76
  %115 = phi ptr [ %109, %108 ], [ null, %76 ], [ null, %80 ]
  %116 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 36
  %117 = call ptr @snd_array_new(ptr noundef %116) #11
  %118 = icmp eq ptr %117, null
  br i1 %118, label %161, label %119

119:                                              ; preds = %114
  store i16 %1, ptr %117, align 4
  %120 = getelementptr inbounds %struct.hda_jack_tbl, ptr %117, i32 0, i32 1
  store i32 0, ptr %120, align 4
  %121 = getelementptr inbounds %struct.hda_jack_tbl, ptr %117, i32 0, i32 5
  %122 = load i8, ptr %121, align 4
  %123 = or i8 %122, 2
  store i8 %123, ptr %121, align 4
  %124 = icmp eq ptr %115, null
  br i1 %124, label %134, label %125

125:                                              ; preds = %119
  %126 = getelementptr inbounds %struct.hda_jack_tbl, ptr %115, i32 0, i32 2
  %127 = load i8, ptr %126, align 4
  %128 = getelementptr inbounds %struct.hda_jack_tbl, ptr %117, i32 0, i32 2
  store i8 %127, ptr %128, align 4
  %129 = getelementptr inbounds %struct.hda_jack_tbl, ptr %115, i32 0, i32 5
  %130 = load i8, ptr %129, align 4
  %131 = and i8 %130, 1
  %132 = and i8 %123, -2
  %133 = or i8 %131, %132
  store i8 %133, ptr %121, align 4
  br label %138

134:                                              ; preds = %119
  %135 = load i32, ptr %116, align 8
  %136 = trunc i32 %135 to i8
  %137 = getelementptr inbounds %struct.hda_jack_tbl, ptr %117, i32 0, i32 2
  store i8 %136, ptr %137, align 4
  br label %138

138:                                              ; preds = %134, %125, %111
  %139 = phi i8 [ %133, %125 ], [ %123, %134 ], [ %113, %111 ]
  %140 = phi ptr [ %117, %125 ], [ %117, %134 ], [ %98, %111 ]
  %141 = and i8 %139, 1
  %142 = icmp eq i8 %141, 0
  br i1 %142, label %143, label %161

143:                                              ; preds = %138
  %144 = getelementptr inbounds %struct.hda_jack_tbl, ptr %140, i32 0, i32 5
  %145 = or i8 %139, 1
  store i8 %145, ptr %144, align 4
  %146 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 37
  %147 = load i32, ptr %146, align 4
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %149, label %161

149:                                              ; preds = %143
  %150 = getelementptr inbounds %struct.hda_jack_tbl, ptr %140, i32 0, i32 2
  %151 = load i8, ptr %150, align 4
  %152 = or i8 %151, -128
  %153 = zext i8 %152 to i32
  %154 = zext i16 %1 to i32
  %155 = shl i32 %154, 20
  %156 = or i32 %155, 985088
  %157 = call i32 @snd_hdac_regmap_write_raw(ptr noundef %0, i32 noundef %156, i32 noundef %153) #11
  %158 = icmp slt i32 %157, 0
  %159 = inttoptr i32 %157 to ptr
  %160 = select i1 %158, ptr %159, ptr null
  br label %161

161:                                              ; preds = %149, %143, %138, %114
  %162 = phi ptr [ null, %138 ], [ null, %143 ], [ %160, %149 ], [ inttoptr (i32 -12 to ptr), %114 ]
  %163 = icmp ugt ptr %162, inttoptr (i32 -4096 to ptr)
  %164 = ptrtoint ptr %162 to i32
  %165 = select i1 %163, i32 %164, i32 0
  br label %166

166:                                              ; preds = %161, %71, %14, %12
  %167 = phi i32 [ %165, %161 ], [ 0, %12 ], [ 0, %14 ], [ %75, %71 ]
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %6) #11
  ret i32 %167
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @snd_hda_jack_unsol_event(ptr noundef %0, i32 noundef %1) #0 {
  %3 = lshr i32 %1, 26
  %4 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 30
  %5 = load i32, ptr %4, align 8
  %6 = and i32 %5, 32768
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %35, label %8

8:                                                ; preds = %2
  %9 = lshr i32 %1, 15
  %10 = and i32 %9, 63
  %11 = trunc i32 %3 to i8
  %12 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 36, i32 4
  %13 = load ptr, ptr %12, align 8
  %14 = icmp ne i8 %11, 0
  %15 = icmp ne ptr %13, null
  %16 = select i1 %14, i1 %15, i1 false
  br i1 %16, label %17, label %146

17:                                               ; preds = %8
  %18 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 36
  %19 = load i32, ptr %18, align 8
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %146, label %21

21:                                               ; preds = %31, %17
  %22 = phi i32 [ %32, %31 ], [ 0, %17 ]
  %23 = phi ptr [ %33, %31 ], [ %13, %17 ]
  %24 = getelementptr inbounds %struct.hda_jack_tbl, ptr %23, i32 0, i32 2
  %25 = load i8, ptr %24, align 4
  %26 = icmp eq i8 %25, %11
  br i1 %26, label %27, label %31

27:                                               ; preds = %21
  %28 = getelementptr inbounds %struct.hda_jack_tbl, ptr %23, i32 0, i32 1
  %29 = load i32, ptr %28, align 4
  %30 = icmp eq i32 %29, %10
  br i1 %30, label %60, label %31

31:                                               ; preds = %27, %21
  %32 = add nuw i32 %22, 1
  %33 = getelementptr %struct.hda_jack_tbl, ptr %23, i32 1
  %34 = icmp eq i32 %32, %19
  br i1 %34, label %146, label %21

35:                                               ; preds = %2
  %36 = trunc i32 %3 to i8
  %37 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 36, i32 4
  %38 = load ptr, ptr %37, align 8
  %39 = icmp ne i8 %36, 0
  %40 = icmp ne ptr %38, null
  %41 = select i1 %39, i1 %40, i1 false
  br i1 %41, label %42, label %146

42:                                               ; preds = %35
  %43 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 36
  %44 = load i32, ptr %43, align 8
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %146, label %46

46:                                               ; preds = %56, %42
  %47 = phi i32 [ %57, %56 ], [ 0, %42 ]
  %48 = phi ptr [ %58, %56 ], [ %38, %42 ]
  %49 = getelementptr inbounds %struct.hda_jack_tbl, ptr %48, i32 0, i32 2
  %50 = load i8, ptr %49, align 4
  %51 = icmp eq i8 %50, %36
  br i1 %51, label %52, label %56

52:                                               ; preds = %46
  %53 = getelementptr inbounds %struct.hda_jack_tbl, ptr %48, i32 0, i32 1
  %54 = load i32, ptr %53, align 4
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %60, label %56

56:                                               ; preds = %52, %46
  %57 = add nuw i32 %47, 1
  %58 = getelementptr %struct.hda_jack_tbl, ptr %48, i32 1
  %59 = icmp eq i32 %57, %44
  br i1 %59, label %146, label %46

60:                                               ; preds = %52, %27
  %61 = phi i32 [ %44, %52 ], [ %19, %27 ]
  %62 = phi ptr [ %38, %52 ], [ %13, %27 ]
  %63 = phi i32 [ 0, %52 ], [ %10, %27 ]
  %64 = phi ptr [ %48, %52 ], [ %23, %27 ]
  %65 = icmp eq ptr %64, null
  br i1 %65, label %146, label %66

66:                                               ; preds = %60
  %67 = getelementptr inbounds %struct.hda_jack_tbl, ptr %64, i32 0, i32 8
  %68 = load i16, ptr %67, align 2
  %69 = icmp eq i16 %68, 0
  br i1 %69, label %85, label %70

70:                                               ; preds = %79, %66
  %71 = phi i32 [ %80, %79 ], [ 0, %66 ]
  %72 = phi ptr [ %81, %79 ], [ %62, %66 ]
  %73 = load i16, ptr %72, align 4
  %74 = icmp eq i16 %73, %68
  br i1 %74, label %75, label %79

75:                                               ; preds = %70
  %76 = getelementptr inbounds %struct.hda_jack_tbl, ptr %72, i32 0, i32 1
  %77 = load i32, ptr %76, align 4
  %78 = icmp eq i32 %77, %63
  br i1 %78, label %83, label %79

79:                                               ; preds = %75, %70
  %80 = add nuw i32 %71, 1
  %81 = getelementptr %struct.hda_jack_tbl, ptr %72, i32 1
  %82 = icmp eq i32 %80, %61
  br i1 %82, label %90, label %70

83:                                               ; preds = %75
  %84 = icmp eq ptr %72, null
  br i1 %84, label %90, label %85

85:                                               ; preds = %83, %66
  %86 = phi ptr [ %72, %83 ], [ %64, %66 ]
  %87 = getelementptr inbounds %struct.hda_jack_tbl, ptr %86, i32 0, i32 5
  %88 = load i8, ptr %87, align 4
  %89 = or i8 %88, 2
  store i8 %89, ptr %87, align 4
  br label %90

90:                                               ; preds = %85, %83, %79
  %91 = getelementptr inbounds %struct.hda_jack_tbl, ptr %64, i32 0, i32 3
  %92 = load ptr, ptr %91, align 4
  %93 = icmp eq ptr %92, null
  br i1 %93, label %103, label %94

94:                                               ; preds = %94, %90
  %95 = phi ptr [ %101, %94 ], [ %92, %90 ]
  %96 = getelementptr inbounds %struct.hda_jack_callback, ptr %95, i32 0, i32 5
  store ptr %64, ptr %96, align 4
  %97 = getelementptr inbounds %struct.hda_jack_callback, ptr %95, i32 0, i32 4
  store i32 %1, ptr %97, align 4
  %98 = getelementptr inbounds %struct.hda_jack_callback, ptr %95, i32 0, i32 2
  %99 = load ptr, ptr %98, align 4
  tail call void %99(ptr noundef %0, ptr noundef nonnull %95) #11
  %100 = getelementptr inbounds %struct.hda_jack_callback, ptr %95, i32 0, i32 6
  %101 = load ptr, ptr %100, align 4
  %102 = icmp eq ptr %101, null
  br i1 %102, label %103, label %94

103:                                              ; preds = %94, %90
  %104 = getelementptr inbounds %struct.hda_jack_tbl, ptr %64, i32 0, i32 7
  %105 = load i16, ptr %104, align 4
  %106 = icmp eq i16 %105, 0
  br i1 %106, label %145, label %107

107:                                              ; preds = %103
  %108 = getelementptr inbounds %struct.hda_jack_tbl, ptr %64, i32 0, i32 1
  %109 = load i32, ptr %108, align 4
  %110 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 36, i32 4
  %111 = load ptr, ptr %110, align 8
  %112 = icmp eq ptr %111, null
  br i1 %112, label %145, label %113

113:                                              ; preds = %107
  %114 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 36
  %115 = load i32, ptr %114, align 8
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %145, label %117

117:                                              ; preds = %126, %113
  %118 = phi i32 [ %127, %126 ], [ 0, %113 ]
  %119 = phi ptr [ %128, %126 ], [ %111, %113 ]
  %120 = load i16, ptr %119, align 4
  %121 = icmp eq i16 %120, %105
  br i1 %121, label %122, label %126

122:                                              ; preds = %117
  %123 = getelementptr inbounds %struct.hda_jack_tbl, ptr %119, i32 0, i32 1
  %124 = load i32, ptr %123, align 4
  %125 = icmp eq i32 %124, %109
  br i1 %125, label %130, label %126

126:                                              ; preds = %122, %117
  %127 = add nuw i32 %118, 1
  %128 = getelementptr %struct.hda_jack_tbl, ptr %119, i32 1
  %129 = icmp eq i32 %127, %115
  br i1 %129, label %145, label %117

130:                                              ; preds = %122
  %131 = icmp eq ptr %119, null
  br i1 %131, label %145, label %132

132:                                              ; preds = %130
  %133 = getelementptr inbounds %struct.hda_jack_tbl, ptr %119, i32 0, i32 3
  %134 = load ptr, ptr %133, align 4
  %135 = icmp eq ptr %134, null
  br i1 %135, label %145, label %136

136:                                              ; preds = %136, %132
  %137 = phi ptr [ %143, %136 ], [ %134, %132 ]
  %138 = getelementptr inbounds %struct.hda_jack_callback, ptr %137, i32 0, i32 5
  store ptr %119, ptr %138, align 4
  %139 = getelementptr inbounds %struct.hda_jack_callback, ptr %137, i32 0, i32 4
  store i32 %1, ptr %139, align 4
  %140 = getelementptr inbounds %struct.hda_jack_callback, ptr %137, i32 0, i32 2
  %141 = load ptr, ptr %140, align 4
  tail call void %141(ptr noundef %0, ptr noundef nonnull %137) #11
  %142 = getelementptr inbounds %struct.hda_jack_callback, ptr %137, i32 0, i32 6
  %143 = load ptr, ptr %142, align 4
  %144 = icmp eq ptr %143, null
  br i1 %144, label %145, label %136

145:                                              ; preds = %136, %132, %130, %126, %113, %107, %103
  tail call void @snd_hda_jack_report_sync(ptr noundef %0)
  br label %146

146:                                              ; preds = %145, %60, %56, %42, %35, %31, %17, %8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @snd_hda_jack_poll_all(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 36
  %3 = getelementptr inbounds %struct.hda_codec, ptr %0, i32 0, i32 36, i32 4
  %4 = load i32, ptr %2, align 8
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %87, label %6

6:                                                ; preds = %1
  %7 = load ptr, ptr %3, align 8
  br label %8

8:                                                ; preds = %78, %6
  %9 = phi i32 [ %79, %78 ], [ 0, %6 ]
  %10 = phi i32 [ %80, %78 ], [ 0, %6 ]
  %11 = phi ptr [ %81, %78 ], [ %7, %6 ]
  %12 = load i16, ptr %11, align 4
  %13 = icmp eq i16 %12, 0
  br i1 %13, label %78, label %14

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.hda_jack_tbl, ptr %11, i32 0, i32 5
  %16 = load i8, ptr %15, align 4
  %17 = and i8 %16, 6
  %18 = icmp eq i8 %17, 2
  br i1 %18, label %19, label %78

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.hda_jack_tbl, ptr %11, i32 0, i32 4
  %21 = load i32, ptr %20, align 4
  tail call fastcc void @jack_detect_update(ptr noundef %0, ptr noundef %11)
  %22 = load i32, ptr %20, align 4
  %23 = xor i32 %22, %21
  %24 = icmp sgt i32 %23, -1
  br i1 %24, label %78, label %25

25:                                               ; preds = %19
  %26 = getelementptr inbounds %struct.hda_jack_tbl, ptr %11, i32 0, i32 3
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %38, label %29

29:                                               ; preds = %29, %25
  %30 = phi ptr [ %36, %29 ], [ %27, %25 ]
  %31 = getelementptr inbounds %struct.hda_jack_callback, ptr %30, i32 0, i32 5
  store ptr %11, ptr %31, align 4
  %32 = getelementptr inbounds %struct.hda_jack_callback, ptr %30, i32 0, i32 4
  store i32 0, ptr %32, align 4
  %33 = getelementptr inbounds %struct.hda_jack_callback, ptr %30, i32 0, i32 2
  %34 = load ptr, ptr %33, align 4
  tail call void %34(ptr noundef %0, ptr noundef nonnull %30) #11
  %35 = getelementptr inbounds %struct.hda_jack_callback, ptr %30, i32 0, i32 6
  %36 = load ptr, ptr %35, align 4
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %29

38:                                               ; preds = %29, %25
  %39 = getelementptr inbounds %struct.hda_jack_tbl, ptr %11, i32 0, i32 7
  %40 = load i16, ptr %39, align 4
  %41 = icmp eq i16 %40, 0
  br i1 %41, label %78, label %42

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.hda_jack_tbl, ptr %11, i32 0, i32 1
  %44 = load i32, ptr %43, align 4
  %45 = load ptr, ptr %3, align 8
  %46 = icmp eq ptr %45, null
  br i1 %46, label %78, label %47

47:                                               ; preds = %42
  %48 = load i32, ptr %2, align 8
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %78, label %50

50:                                               ; preds = %59, %47
  %51 = phi i32 [ %60, %59 ], [ 0, %47 ]
  %52 = phi ptr [ %61, %59 ], [ %45, %47 ]
  %53 = load i16, ptr %52, align 4
  %54 = icmp eq i16 %53, %40
  br i1 %54, label %55, label %59

55:                                               ; preds = %50
  %56 = getelementptr inbounds %struct.hda_jack_tbl, ptr %52, i32 0, i32 1
  %57 = load i32, ptr %56, align 4
  %58 = icmp eq i32 %57, %44
  br i1 %58, label %63, label %59

59:                                               ; preds = %55, %50
  %60 = add nuw i32 %51, 1
  %61 = getelementptr %struct.hda_jack_tbl, ptr %52, i32 1
  %62 = icmp eq i32 %60, %48
  br i1 %62, label %78, label %50

63:                                               ; preds = %55
  %64 = icmp eq ptr %52, null
  br i1 %64, label %78, label %65

65:                                               ; preds = %63
  %66 = getelementptr inbounds %struct.hda_jack_tbl, ptr %52, i32 0, i32 3
  %67 = load ptr, ptr %66, align 4
  %68 = icmp eq ptr %67, null
  br i1 %68, label %78, label %69

69:                                               ; preds = %69, %65
  %70 = phi ptr [ %76, %69 ], [ %67, %65 ]
  %71 = getelementptr inbounds %struct.hda_jack_callback, ptr %70, i32 0, i32 5
  store ptr %52, ptr %71, align 4
  %72 = getelementptr inbounds %struct.hda_jack_callback, ptr %70, i32 0, i32 4
  store i32 0, ptr %72, align 4
  %73 = getelementptr inbounds %struct.hda_jack_callback, ptr %70, i32 0, i32 2
  %74 = load ptr, ptr %73, align 4
  tail call void %74(ptr noundef %0, ptr noundef nonnull %70) #11
  %75 = getelementptr inbounds %struct.hda_jack_callback, ptr %70, i32 0, i32 6
  %76 = load ptr, ptr %75, align 4
  %77 = icmp eq ptr %76, null
  br i1 %77, label %78, label %69

78:                                               ; preds = %69, %65, %63, %59, %47, %42, %38, %19, %14, %8
  %79 = phi i32 [ %9, %14 ], [ %9, %8 ], [ %9, %19 ], [ 1, %38 ], [ 1, %42 ], [ 1, %47 ], [ 1, %63 ], [ 1, %65 ], [ 1, %69 ], [ 1, %59 ]
  %80 = add nuw i32 %10, 1
  %81 = getelementptr %struct.hda_jack_tbl, ptr %11, i32 1
  %82 = load i32, ptr %2, align 8
  %83 = icmp ult i32 %80, %82
  br i1 %83, label %8, label %84

84:                                               ; preds = %78
  %85 = icmp eq i32 %79, 0
  br i1 %85, label %87, label %86

86:                                               ; preds = %84
  tail call void @snd_hda_jack_report_sync(ptr noundef %0)
  br label %87

87:                                               ; preds = %86, %84, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_snd_hdac_read_parm(ptr noundef, i16 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hdac_codec_read(ptr noundef, i16 noundef zeroext, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_array_new(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hdac_regmap_write_raw(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hda_get_pin_label(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strncat(ptr noalias noundef returned, ptr noalias nocapture noundef readonly, i32 noundef) local_unnamed_addr #8

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #10

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly nofree nounwind willreturn writeonly }
attributes #8 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { nounwind }
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
!8 = !{!"auto-init"}
!9 = !{!"branch_weights", i32 1, i32 2000}
!10 = !{!"branch_weights", i32 2000, i32 1}
