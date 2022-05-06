; ModuleID = '/llk/IR/sound/hda/hdmi_chmap.c_pt.bc'
source_filename = "../sound/hda/hdmi_chmap.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_hdac_print_channel_allocation:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_hdac_print_channel_allocation\22\09\09\09\09\09"
module asm "__kstrtabns_snd_hdac_print_channel_allocation:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_hdac_chmap_to_spk_mask:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_hdac_chmap_to_spk_mask\22\09\09\09\09\09"
module asm "__kstrtabns_snd_hdac_chmap_to_spk_mask:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_hdac_spk_to_chmap:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_hdac_spk_to_chmap\22\09\09\09\09\09"
module asm "__kstrtabns_snd_hdac_spk_to_chmap:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_hdac_setup_channel_mapping:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_hdac_setup_channel_mapping\22\09\09\09\09\09"
module asm "__kstrtabns_snd_hdac_setup_channel_mapping:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_hdac_get_active_channels:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_hdac_get_active_channels\22\09\09\09\09\09"
module asm "__kstrtabns_snd_hdac_get_active_channels:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_hdac_get_ch_alloc_from_ca:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_hdac_get_ch_alloc_from_ca\22\09\09\09\09\09"
module asm "__kstrtabns_snd_hdac_get_ch_alloc_from_ca:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_hdac_channel_allocation:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_hdac_channel_allocation\22\09\09\09\09\09"
module asm "__kstrtabns_snd_hdac_channel_allocation:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_hdac_register_chmap_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_hdac_register_chmap_ops\22\09\09\09\09\09"
module asm "__kstrtabns_snd_hdac_register_chmap_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_hdac_add_chmap_ctls:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_hdac_add_chmap_ctls\22\09\09\09\09\09"
module asm "__kstrtabns_snd_hdac_add_chmap_ctls:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.channel_map_table = type { i8, i32 }
%struct.hdac_cea_channel_speaker_allocation = type { i32, [8 x i32], i32, i32 }
%struct.hdac_chmap_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.hdac_chmap = type { i32, %struct.hdac_chmap_ops, ptr }
%struct.snd_pcm_chmap = type { ptr, i32, ptr, ptr, i32, i32, ptr }
%struct.snd_kcontrol = type { %struct.list_head, %struct.snd_ctl_elem_id, i32, ptr, ptr, ptr, %union.anon.75, i32, ptr, ptr, [0 x %struct.snd_kcontrol_volatile] }
%struct.list_head = type { ptr, ptr }
%struct.snd_ctl_elem_id = type { i32, i32, i32, i32, [44 x i8], i32 }
%union.anon.75 = type { ptr }
%struct.snd_kcontrol_volatile = type { ptr, i32 }
%struct.snd_ctl_elem_info = type { %struct.snd_ctl_elem_id, i32, i32, i32, i32, %union.anon.66, [64 x i8] }
%union.anon.66 = type { %struct.anon.69, [40 x i8] }
%struct.anon.69 = type { i32, i32, [64 x i8], i64, i32 }
%struct.snd_ctl_elem_value = type { %struct.snd_ctl_elem_id, i8, %union.anon.70, [128 x i8] }
%union.anon.70 = type { %union.anon.72 }
%union.anon.72 = type { [64 x i64] }
%struct.snd_pcm = type { ptr, %struct.list_head, i32, i32, i16, i16, [64 x i8], [80 x i8], [2 x %struct.snd_pcm_str], %struct.mutex, %struct.wait_queue_head, ptr, ptr, i8, i8, i8 }
%struct.snd_pcm_str = type { i32, ptr, i32, i32, ptr, ptr, ptr, %struct.device }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
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
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.snd_pcm_substream = type { ptr, ptr, ptr, i32, [32 x i8], i32, %struct.pm_qos_request, i32, %struct.snd_dma_buffer, i32, ptr, ptr, ptr, i8, i32, ptr, %struct.list_head, %struct.snd_pcm_group, ptr, i32, %struct.atomic_t, i32, ptr, ptr, ptr, i8 }
%struct.pm_qos_request = type { %struct.plist_node, ptr }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.snd_dma_buffer = type { %struct.snd_dma_device, ptr, i32, i32, ptr }
%struct.snd_dma_device = type { i32, i32, i8, ptr }
%struct.snd_pcm_group = type { %struct.spinlock, %struct.mutex, %struct.list_head, %struct.refcount_struct }
%struct.snd_pcm_runtime = type { ptr, %struct.timespec64, i8, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, %union.snd_pcm_sync_id, ptr, ptr, i32, %struct.wait_queue_head, %struct.wait_queue_head, ptr, i8, ptr, ptr, %struct.snd_pcm_hardware, %struct.snd_pcm_hw_constraints, i32, i32, ptr, i32, i32, ptr, i8, [3 x i8], %struct.snd_pcm_audio_tstamp_config, %struct.snd_pcm_audio_tstamp_report, %struct.timespec64 }
%union.snd_pcm_sync_id = type { [4 x i32] }
%struct.snd_pcm_hardware = type { i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.snd_pcm_hw_constraints = type { [3 x %struct.snd_mask], [12 x %struct.snd_interval], i32, i32, ptr }
%struct.snd_mask = type { [8 x i32] }
%struct.snd_interval = type { i32, i32, i8 }
%struct.snd_pcm_audio_tstamp_config = type { i8, [3 x i8] }
%struct.snd_pcm_audio_tstamp_report = type { i8, i32 }
%struct.timespec64 = type { i64, i32 }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@cea_speaker_allocation_names = internal unnamed_addr constant [11 x ptr] [ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11], align 4
@__kstrtab_snd_hdac_print_channel_allocation = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_hdac_print_channel_allocation = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_hdac_print_channel_allocation = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_hdac_print_channel_allocation to i32), ptr @__kstrtab_snd_hdac_print_channel_allocation, ptr @__kstrtabns_snd_hdac_print_channel_allocation }, section "___ksymtab_gpl+snd_hdac_print_channel_allocation", align 4
@map_tables = internal unnamed_addr constant [18 x %struct.channel_map_table] [%struct.channel_map_table { i8 3, i32 1 }, %struct.channel_map_table { i8 4, i32 4 }, %struct.channel_map_table { i8 5, i32 32 }, %struct.channel_map_table { i8 6, i32 128 }, %struct.channel_map_table { i8 8, i32 1024 }, %struct.channel_map_table { i8 7, i32 2 }, %struct.channel_map_table { i8 14, i32 256 }, %struct.channel_map_table { i8 15, i32 512 }, %struct.channel_map_table { i8 11, i32 64 }, %struct.channel_map_table { i8 12, i32 8 }, %struct.channel_map_table { i8 13, i32 16 }, %struct.channel_map_table { i8 22, i32 8192 }, %struct.channel_map_table { i8 23, i32 32768 }, %struct.channel_map_table { i8 16, i32 2048 }, %struct.channel_map_table { i8 17, i32 4096 }, %struct.channel_map_table { i8 21, i32 65536 }, %struct.channel_map_table { i8 24, i32 16384 }, %struct.channel_map_table zeroinitializer], align 4
@__kstrtab_snd_hdac_chmap_to_spk_mask = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_hdac_chmap_to_spk_mask = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_hdac_chmap_to_spk_mask = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_hdac_chmap_to_spk_mask to i32), ptr @__kstrtab_snd_hdac_chmap_to_spk_mask, ptr @__kstrtabns_snd_hdac_chmap_to_spk_mask }, section "___ksymtab_gpl+snd_hdac_chmap_to_spk_mask", align 4
@__kstrtab_snd_hdac_spk_to_chmap = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_hdac_spk_to_chmap = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_hdac_spk_to_chmap = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_hdac_spk_to_chmap to i32), ptr @__kstrtab_snd_hdac_spk_to_chmap, ptr @__kstrtabns_snd_hdac_spk_to_chmap }, section "___ksymtab_gpl+snd_hdac_spk_to_chmap", align 4
@__kstrtab_snd_hdac_setup_channel_mapping = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_hdac_setup_channel_mapping = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_hdac_setup_channel_mapping = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_hdac_setup_channel_mapping to i32), ptr @__kstrtab_snd_hdac_setup_channel_mapping, ptr @__kstrtabns_snd_hdac_setup_channel_mapping }, section "___ksymtab_gpl+snd_hdac_setup_channel_mapping", align 4
@channel_allocations = internal global [50 x %struct.hdac_cea_channel_speaker_allocation] [%struct.hdac_cea_channel_speaker_allocation { i32 0, [8 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, i32 1], i32 0, i32 0 }, %struct.hdac_cea_channel_speaker_allocation { i32 1, [8 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 1024, i32 4, i32 1], i32 0, i32 0 }, %struct.hdac_cea_channel_speaker_allocation { i32 2, [8 x i32] [i32 0, i32 0, i32 0, i32 0, i32 2, i32 0, i32 4, i32 1], i32 0, i32 0 }, %struct.hdac_cea_channel_speaker_allocation { i32 8, [8 x i32] [i32 0, i32 0, i32 128, i32 32, i32 0, i32 0, i32 4, i32 1], i32 0, i32 0 }, %struct.hdac_cea_channel_speaker_allocation { i32 9, [8 x i32] [i32 0, i32 0, i32 128, i32 32, i32 0, i32 1024, i32 4, i32 1], i32 0, i32 0 }, %struct.hdac_cea_channel_speaker_allocation { i32 10, [8 x i32] [i32 0, i32 0, i32 128, i32 32, i32 2, i32 0, i32 4, i32 1], i32 0, i32 0 }, %struct.hdac_cea_channel_speaker_allocation { i32 11, [8 x i32] [i32 0, i32 0, i32 128, i32 32, i32 2, i32 1024, i32 4, i32 1], i32 0, i32 0 }, %struct.hdac_cea_channel_speaker_allocation { i32 15, [8 x i32] [i32 0, i32 64, i32 128, i32 32, i32 2, i32 1024, i32 4, i32 1], i32 0, i32 0 }, %struct.hdac_cea_channel_speaker_allocation { i32 19, [8 x i32] [i32 512, i32 256, i32 128, i32 32, i32 2, i32 1024, i32 4, i32 1], i32 0, i32 0 }, %struct.hdac_cea_channel_speaker_allocation { i32 3, [8 x i32] [i32 0, i32 0, i32 0, i32 0, i32 2, i32 1024, i32 4, i32 1], i32 0, i32 0 }, %struct.hdac_cea_channel_speaker_allocation { i32 4, [8 x i32] [i32 0, i32 0, i32 0, i32 64, i32 0, i32 0, i32 4, i32 1], i32 0, i32 0 }, %struct.hdac_cea_channel_speaker_allocation { i32 5, [8 x i32] [i32 0, i32 0, i32 0, i32 64, i32 0, i32 1024, i32 4, i32 1], i32 0, i32 0 }, %struct.hdac_cea_channel_speaker_allocation { i32 6, [8 x i32] [i32 0, i32 0, i32 0, i32 64, i32 2, i32 0, i32 4, i32 1], i32 0, i32 0 }, %struct.hdac_cea_channel_speaker_allocation { i32 7, [8 x i32] [i32 0, i32 0, i32 0, i32 64, i32 2, i32 1024, i32 4, i32 1], i32 0, i32 0 }, %struct.hdac_cea_channel_speaker_allocation { i32 12, [8 x i32] [i32 0, i32 64, i32 128, i32 32, i32 0, i32 0, i32 4, i32 1], i32 0, i32 0 }, %struct.hdac_cea_channel_speaker_allocation { i32 13, [8 x i32] [i32 0, i32 64, i32 128, i32 32, i32 0, i32 1024, i32 4, i32 1], i32 0, i32 0 }, %struct.hdac_cea_channel_speaker_allocation { i32 14, [8 x i32] [i32 0, i32 64, i32 128, i32 32, i32 2, i32 0, i32 4, i32 1], i32 0, i32 0 }, %struct.hdac_cea_channel_speaker_allocation { i32 16, [8 x i32] [i32 512, i32 256, i32 128, i32 32, i32 0, i32 0, i32 4, i32 1], i32 0, i32 0 }, %struct.hdac_cea_channel_speaker_allocation { i32 17, [8 x i32] [i32 512, i32 256, i32 128, i32 32, i32 0, i32 1024, i32 4, i32 1], i32 0, i32 0 }, %struct.hdac_cea_channel_speaker_allocation { i32 18, [8 x i32] [i32 512, i32 256, i32 128, i32 32, i32 2, i32 0, i32 4, i32 1], i32 0, i32 0 }, %struct.hdac_cea_channel_speaker_allocation { i32 20, [8 x i32] [i32 16, i32 8, i32 0, i32 0, i32 0, i32 0, i32 4, i32 1], i32 0, i32 0 }, %struct.hdac_cea_channel_speaker_allocation { i32 21, [8 x i32] [i32 16, i32 8, i32 0, i32 0, i32 0, i32 1024, i32 4, i32 1], i32 0, i32 0 }, %struct.hdac_cea_channel_speaker_allocation { i32 22, [8 x i32] [i32 16, i32 8, i32 0, i32 0, i32 2, i32 0, i32 4, i32 1], i32 0, i32 0 }, %struct.hdac_cea_channel_speaker_allocation { i32 23, [8 x i32] [i32 16, i32 8, i32 0, i32 0, i32 2, i32 1024, i32 4, i32 1], i32 0, i32 0 }, %struct.hdac_cea_channel_speaker_allocation { i32 24, [8 x i32] [i32 16, i32 8, i32 0, i32 64, i32 0, i32 0, i32 4, i32 1], i32 0, i32 0 }, %struct.hdac_cea_channel_speaker_allocation { i32 25, [8 x i32] [i32 16, i32 8, i32 0, i32 64, i32 0, i32 1024, i32 4, i32 1], i32 0, i32 0 }, %struct.hdac_cea_channel_speaker_allocation { i32 26, [8 x i32] [i32 16, i32 8, i32 0, i32 64, i32 2, i32 0, i32 4, i32 1], i32 0, i32 0 }, %struct.hdac_cea_channel_speaker_allocation { i32 27, [8 x i32] [i32 16, i32 8, i32 0, i32 64, i32 2, i32 1024, i32 4, i32 1], i32 0, i32 0 }, %struct.hdac_cea_channel_speaker_allocation { i32 28, [8 x i32] [i32 16, i32 8, i32 128, i32 32, i32 0, i32 0, i32 4, i32 1], i32 0, i32 0 }, %struct.hdac_cea_channel_speaker_allocation { i32 29, [8 x i32] [i32 16, i32 8, i32 128, i32 32, i32 0, i32 1024, i32 4, i32 1], i32 0, i32 0 }, %struct.hdac_cea_channel_speaker_allocation { i32 30, [8 x i32] [i32 16, i32 8, i32 128, i32 32, i32 2, i32 0, i32 4, i32 1], i32 0, i32 0 }, %struct.hdac_cea_channel_speaker_allocation { i32 31, [8 x i32] [i32 16, i32 8, i32 128, i32 32, i32 2, i32 1024, i32 4, i32 1], i32 0, i32 0 }, %struct.hdac_cea_channel_speaker_allocation { i32 32, [8 x i32] [i32 0, i32 16384, i32 128, i32 32, i32 2, i32 0, i32 4, i32 1], i32 0, i32 0 }, %struct.hdac_cea_channel_speaker_allocation { i32 33, [8 x i32] [i32 0, i32 16384, i32 128, i32 32, i32 2, i32 1024, i32 4, i32 1], i32 0, i32 0 }, %struct.hdac_cea_channel_speaker_allocation { i32 34, [8 x i32] [i32 65536, i32 0, i32 128, i32 32, i32 2, i32 0, i32 4, i32 1], i32 0, i32 0 }, %struct.hdac_cea_channel_speaker_allocation { i32 35, [8 x i32] [i32 65536, i32 0, i32 128, i32 32, i32 2, i32 1024, i32 4, i32 1], i32 0, i32 0 }, %struct.hdac_cea_channel_speaker_allocation { i32 36, [8 x i32] [i32 32768, i32 8192, i32 128, i32 32, i32 0, i32 0, i32 4, i32 1], i32 0, i32 0 }, %struct.hdac_cea_channel_speaker_allocation { i32 37, [8 x i32] [i32 32768, i32 8192, i32 128, i32 32, i32 0, i32 1024, i32 4, i32 1], i32 0, i32 0 }, %struct.hdac_cea_channel_speaker_allocation { i32 38, [8 x i32] [i32 4096, i32 2048, i32 128, i32 32, i32 0, i32 0, i32 4, i32 1], i32 0, i32 0 }, %struct.hdac_cea_channel_speaker_allocation { i32 39, [8 x i32] [i32 4096, i32 2048, i32 128, i32 32, i32 0, i32 1024, i32 4, i32 1], i32 0, i32 0 }, %struct.hdac_cea_channel_speaker_allocation { i32 40, [8 x i32] [i32 65536, i32 64, i32 128, i32 32, i32 2, i32 0, i32 4, i32 1], i32 0, i32 0 }, %struct.hdac_cea_channel_speaker_allocation { i32 41, [8 x i32] [i32 65536, i32 64, i32 128, i32 32, i32 2, i32 1024, i32 4, i32 1], i32 0, i32 0 }, %struct.hdac_cea_channel_speaker_allocation { i32 42, [8 x i32] [i32 16384, i32 64, i32 128, i32 32, i32 2, i32 0, i32 4, i32 1], i32 0, i32 0 }, %struct.hdac_cea_channel_speaker_allocation { i32 43, [8 x i32] [i32 16384, i32 64, i32 128, i32 32, i32 2, i32 1024, i32 4, i32 1], i32 0, i32 0 }, %struct.hdac_cea_channel_speaker_allocation { i32 44, [8 x i32] [i32 65536, i32 16384, i32 128, i32 32, i32 2, i32 0, i32 4, i32 1], i32 0, i32 0 }, %struct.hdac_cea_channel_speaker_allocation { i32 45, [8 x i32] [i32 65536, i32 16384, i32 128, i32 32, i32 2, i32 1024, i32 4, i32 1], i32 0, i32 0 }, %struct.hdac_cea_channel_speaker_allocation { i32 46, [8 x i32] [i32 32768, i32 8192, i32 128, i32 32, i32 2, i32 0, i32 4, i32 1], i32 0, i32 0 }, %struct.hdac_cea_channel_speaker_allocation { i32 47, [8 x i32] [i32 32768, i32 8192, i32 128, i32 32, i32 2, i32 1024, i32 4, i32 1], i32 0, i32 0 }, %struct.hdac_cea_channel_speaker_allocation { i32 48, [8 x i32] [i32 4096, i32 2048, i32 128, i32 32, i32 2, i32 0, i32 4, i32 1], i32 0, i32 0 }, %struct.hdac_cea_channel_speaker_allocation { i32 49, [8 x i32] [i32 4096, i32 2048, i32 128, i32 32, i32 2, i32 1024, i32 4, i32 1], i32 0, i32 0 }], align 4
@__kstrtab_snd_hdac_get_active_channels = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_hdac_get_active_channels = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_hdac_get_active_channels = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_hdac_get_active_channels to i32), ptr @__kstrtab_snd_hdac_get_active_channels, ptr @__kstrtabns_snd_hdac_get_active_channels }, section "___ksymtab_gpl+snd_hdac_get_active_channels", align 4
@__kstrtab_snd_hdac_get_ch_alloc_from_ca = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_hdac_get_ch_alloc_from_ca = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_hdac_get_ch_alloc_from_ca = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_hdac_get_ch_alloc_from_ca to i32), ptr @__kstrtab_snd_hdac_get_ch_alloc_from_ca, ptr @__kstrtabns_snd_hdac_get_ch_alloc_from_ca }, section "___ksymtab_gpl+snd_hdac_get_ch_alloc_from_ca", align 4
@__kstrtab_snd_hdac_channel_allocation = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_hdac_channel_allocation = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_hdac_channel_allocation = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_hdac_channel_allocation to i32), ptr @__kstrtab_snd_hdac_channel_allocation, ptr @__kstrtabns_snd_hdac_channel_allocation }, section "___ksymtab_gpl+snd_hdac_channel_allocation", align 4
@chmap_ops = internal unnamed_addr constant %struct.hdac_chmap_ops { ptr @hdmi_chmap_cea_alloc_validate_get_type, ptr @hdmi_cea_alloc_to_tlv_chmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @hdmi_pin_get_slot_channel, ptr @hdmi_pin_set_slot_channel, ptr @hdmi_set_channel_count }, align 4
@__kstrtab_snd_hdac_register_chmap_ops = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_hdac_register_chmap_ops = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_hdac_register_chmap_ops = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_hdac_register_chmap_ops to i32), ptr @__kstrtab_snd_hdac_register_chmap_ops, ptr @__kstrtabns_snd_hdac_register_chmap_ops }, section "___ksymtab_gpl+snd_hdac_register_chmap_ops", align 4
@__kstrtab_snd_hdac_add_chmap_ctls = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_hdac_add_chmap_ctls = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_hdac_add_chmap_ctls = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_hdac_add_chmap_ctls to i32), ptr @__kstrtab_snd_hdac_add_chmap_ctls, ptr @__kstrtabns_snd_hdac_add_chmap_ctls }, section "___ksymtab_gpl+snd_hdac_add_chmap_ctls", align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"FL/FR\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"LFE\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"FC\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"RL/RR\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"RC\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"FLC/FRC\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"RLC/RRC\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"FLW/FRW\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"FLH/FRH\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"TC\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"FCH\00", align 1
@__const.hdmi_manual_setup_channel_mapping.assignments = private unnamed_addr constant [8 x i32] [i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15, i32 15], align 4
@.str.12 = private unnamed_addr constant [23 x i8] c"sound/hda/hdmi_chmap.c\00", align 1
@hdmi_channel_mapping = internal unnamed_addr global <{ [20 x [8 x i32]], [30 x [8 x i32]] }> <{ [20 x [8 x i32]] [[8 x i32] [i32 0, i32 17, i32 242, i32 243, i32 244, i32 245, i32 246, i32 247], [8 x i32] [i32 0, i32 17, i32 34, i32 243, i32 244, i32 245, i32 246, i32 247], [8 x i32] [i32 0, i32 17, i32 35, i32 242, i32 244, i32 245, i32 246, i32 247], [8 x i32] [i32 0, i32 17, i32 35, i32 50, i32 68, i32 245, i32 246, i32 247], [8 x i32] zeroinitializer, [8 x i32] zeroinitializer, [8 x i32] zeroinitializer, [8 x i32] zeroinitializer, [8 x i32] [i32 0, i32 17, i32 36, i32 53, i32 243, i32 242, i32 246, i32 247], [8 x i32] [i32 0, i32 17, i32 36, i32 53, i32 66, i32 243, i32 246, i32 247], [8 x i32] [i32 0, i32 17, i32 36, i32 53, i32 67, i32 242, i32 246, i32 247], [8 x i32] [i32 0, i32 17, i32 36, i32 53, i32 67, i32 82, i32 246, i32 247], [8 x i32] zeroinitializer, [8 x i32] zeroinitializer, [8 x i32] zeroinitializer, [8 x i32] zeroinitializer, [8 x i32] zeroinitializer, [8 x i32] zeroinitializer, [8 x i32] zeroinitializer, [8 x i32] [i32 0, i32 17, i32 38, i32 55, i32 67, i32 82, i32 100, i32 117]], [30 x [8 x i32]] zeroinitializer }>, align 4
@.str.14 = private unnamed_addr constant [28 x i8] c"include/linux/thread_info.h\00", align 1
@.str.15 = private unnamed_addr constant [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", align 1
@llvm.compiler.used = appending global [9 x ptr] [ptr @__ksymtab_snd_hdac_add_chmap_ctls, ptr @__ksymtab_snd_hdac_channel_allocation, ptr @__ksymtab_snd_hdac_chmap_to_spk_mask, ptr @__ksymtab_snd_hdac_get_active_channels, ptr @__ksymtab_snd_hdac_get_ch_alloc_from_ca, ptr @__ksymtab_snd_hdac_print_channel_allocation, ptr @__ksymtab_snd_hdac_register_chmap_ops, ptr @__ksymtab_snd_hdac_setup_channel_mapping, ptr @__ksymtab_snd_hdac_spk_to_chmap], section "llvm.metadata"
@switch.table.hdmi_chmap_ctl_put = private unnamed_addr constant [3 x i32] [i32 0, i32 0, i32 1], align 4
@switch.table.hdmi_chmap_ctl_put.16 = private unnamed_addr constant [22 x ptr] [ptr @map_tables, ptr getelementptr inbounds ([18 x %struct.channel_map_table], ptr @map_tables, i32 0, i32 1), ptr getelementptr inbounds ([18 x %struct.channel_map_table], ptr @map_tables, i32 0, i32 2), ptr getelementptr inbounds ([18 x %struct.channel_map_table], ptr @map_tables, i32 0, i32 3), ptr getelementptr inbounds ([18 x %struct.channel_map_table], ptr @map_tables, i32 0, i32 5), ptr getelementptr inbounds ([18 x %struct.channel_map_table], ptr @map_tables, i32 0, i32 4), ptr @map_tables, ptr @map_tables, ptr getelementptr inbounds ([18 x %struct.channel_map_table], ptr @map_tables, i32 0, i32 8), ptr getelementptr inbounds ([18 x %struct.channel_map_table], ptr @map_tables, i32 0, i32 9), ptr getelementptr inbounds ([18 x %struct.channel_map_table], ptr @map_tables, i32 0, i32 10), ptr getelementptr inbounds ([18 x %struct.channel_map_table], ptr @map_tables, i32 0, i32 6), ptr getelementptr inbounds ([18 x %struct.channel_map_table], ptr @map_tables, i32 0, i32 7), ptr getelementptr inbounds ([18 x %struct.channel_map_table], ptr @map_tables, i32 0, i32 13), ptr getelementptr inbounds ([18 x %struct.channel_map_table], ptr @map_tables, i32 0, i32 14), ptr @map_tables, ptr @map_tables, ptr @map_tables, ptr getelementptr inbounds ([18 x %struct.channel_map_table], ptr @map_tables, i32 0, i32 15), ptr getelementptr inbounds ([18 x %struct.channel_map_table], ptr @map_tables, i32 0, i32 11), ptr getelementptr inbounds ([18 x %struct.channel_map_table], ptr @map_tables, i32 0, i32 12), ptr getelementptr inbounds ([18 x %struct.channel_map_table], ptr @map_tables, i32 0, i32 16)], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @snd_hdac_print_channel_allocation(i32 noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  br label %4

4:                                                ; preds = %17, %3
  %5 = phi i32 [ 0, %3 ], [ %18, %17 ]
  %6 = phi i32 [ 0, %3 ], [ %19, %17 ]
  %7 = shl nuw nsw i32 1, %6
  %8 = and i32 %7, %0
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %17, label %10

10:                                               ; preds = %4
  %11 = getelementptr i8, ptr %1, i32 %5
  %12 = sub i32 %2, %5
  %13 = getelementptr [11 x ptr], ptr @cea_speaker_allocation_names, i32 0, i32 %6
  %14 = load ptr, ptr %13, align 4
  %15 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %11, i32 noundef %12, ptr noundef nonnull @.str, ptr noundef %14) #12
  %16 = add i32 %15, %5
  br label %17

17:                                               ; preds = %10, %4
  %18 = phi i32 [ %16, %10 ], [ %5, %4 ]
  %19 = add nuw nsw i32 %6, 1
  %20 = icmp eq i32 %19, 11
  br i1 %20, label %21, label %4

21:                                               ; preds = %17
  %22 = getelementptr i8, ptr %1, i32 %18
  store i8 0, ptr %22, align 1
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local i32 @snd_hdac_chmap_to_spk_mask(i8 noundef zeroext %0) #3 {
  %2 = add i8 %0, -3
  %3 = icmp ult i8 %2, 22
  br i1 %3, label %4, label %15

4:                                                ; preds = %1
  %5 = zext i8 %2 to i32
  %6 = lshr i32 3964735, %5
  %7 = and i32 %6, 1
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %15, label %9

9:                                                ; preds = %4
  %10 = sext i8 %2 to i32
  %11 = getelementptr inbounds [22 x ptr], ptr @switch.table.hdmi_chmap_ctl_put.16, i32 0, i32 %10
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.channel_map_table, ptr %12, i32 0, i32 1
  %14 = load i32, ptr %13, align 4
  br label %15

15:                                               ; preds = %9, %4, %1
  %16 = phi i32 [ %14, %9 ], [ 0, %1 ], [ 0, %4 ]
  ret i32 %16
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local i32 @snd_hdac_spk_to_chmap(i32 noundef %0) #3 {
  switch i32 %0, label %20 [
    i32 1, label %18
    i32 4, label %2
    i32 32, label %3
    i32 128, label %4
    i32 1024, label %5
    i32 2, label %6
    i32 256, label %7
    i32 512, label %8
    i32 64, label %9
    i32 8, label %10
    i32 16, label %11
    i32 8192, label %12
    i32 32768, label %13
    i32 2048, label %14
    i32 4096, label %15
    i32 65536, label %16
    i32 16384, label %17
  ]

2:                                                ; preds = %1
  br label %18

3:                                                ; preds = %1
  br label %18

4:                                                ; preds = %1
  br label %18

5:                                                ; preds = %1
  br label %18

6:                                                ; preds = %1
  br label %18

7:                                                ; preds = %1
  br label %18

8:                                                ; preds = %1
  br label %18

9:                                                ; preds = %1
  br label %18

10:                                               ; preds = %1
  br label %18

11:                                               ; preds = %1
  br label %18

12:                                               ; preds = %1
  br label %18

13:                                               ; preds = %1
  br label %18

14:                                               ; preds = %1
  br label %18

15:                                               ; preds = %1
  br label %18

16:                                               ; preds = %1
  br label %18

17:                                               ; preds = %1
  br label %18

18:                                               ; preds = %17, %16, %15, %14, %13, %12, %11, %10, %9, %8, %7, %6, %5, %4, %3, %2, %1
  %19 = phi i32 [ 3, %1 ], [ 4, %2 ], [ 5, %3 ], [ 6, %4 ], [ 8, %5 ], [ 7, %6 ], [ 14, %7 ], [ 15, %8 ], [ 11, %9 ], [ 12, %10 ], [ 13, %11 ], [ 22, %12 ], [ 23, %13 ], [ 16, %14 ], [ 17, %15 ], [ 21, %16 ], [ 24, %17 ]
  br label %20

20:                                               ; preds = %18, %1
  %21 = phi i32 [ %19, %18 ], [ 0, %1 ]
  ret i32 %21
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @snd_hdac_setup_channel_mapping(ptr nocapture noundef readonly %0, i16 noundef zeroext %1, i1 noundef zeroext %2, i32 noundef %3, i32 noundef %4, ptr nocapture noundef %5, i1 noundef zeroext %6) #0 {
  %8 = alloca [8 x i32], align 4
  %9 = alloca [8 x i32], align 4
  %10 = xor i1 %6, true
  %11 = or i1 %10, %2
  br i1 %11, label %141, label %12

12:                                               ; preds = %17, %7
  %13 = phi i32 [ %18, %17 ], [ 0, %7 ]
  %14 = getelementptr [50 x %struct.hdac_cea_channel_speaker_allocation], ptr @channel_allocations, i32 0, i32 %13
  %15 = load i32, ptr %14, align 4
  %16 = icmp eq i32 %15, %3
  br i1 %16, label %20, label %17

17:                                               ; preds = %12
  %18 = add nuw nsw i32 %13, 1
  %19 = icmp eq i32 %18, 50
  br i1 %19, label %20, label %12

20:                                               ; preds = %17, %12
  %21 = phi i32 [ %13, %12 ], [ 50, %17 ]
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %9) #12
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %9, ptr noundef nonnull align 4 dereferenceable(32) @__const.hdmi_manual_setup_channel_mapping.assignments, i32 32, i1 false) #12
  %22 = icmp sgt i32 %4, 0
  br i1 %22, label %23, label %35

23:                                               ; preds = %20
  %24 = icmp ugt i32 %21, 49
  %25 = getelementptr [50 x %struct.hdac_cea_channel_speaker_allocation], ptr @channel_allocations, i32 0, i32 %21, i32 1, i32 7
  %26 = getelementptr [50 x %struct.hdac_cea_channel_speaker_allocation], ptr @channel_allocations, i32 0, i32 %21, i32 1, i32 6
  %27 = getelementptr [50 x %struct.hdac_cea_channel_speaker_allocation], ptr @channel_allocations, i32 0, i32 %21, i32 1, i32 5
  %28 = getelementptr [50 x %struct.hdac_cea_channel_speaker_allocation], ptr @channel_allocations, i32 0, i32 %21, i32 1, i32 4
  %29 = getelementptr [50 x %struct.hdac_cea_channel_speaker_allocation], ptr @channel_allocations, i32 0, i32 %21, i32 1, i32 3
  %30 = getelementptr [50 x %struct.hdac_cea_channel_speaker_allocation], ptr @channel_allocations, i32 0, i32 %21, i32 1, i32 2
  %31 = getelementptr [50 x %struct.hdac_cea_channel_speaker_allocation], ptr @channel_allocations, i32 0, i32 %21, i32 1, i32 1
  %32 = getelementptr [50 x %struct.hdac_cea_channel_speaker_allocation], ptr @channel_allocations, i32 0, i32 %21, i32 1, i32 0
  br label %43

33:                                               ; preds = %89
  %34 = load i32, ptr %9, align 4
  br label %35

35:                                               ; preds = %33, %20
  %36 = phi i32 [ %34, %33 ], [ 15, %20 ]
  %37 = getelementptr inbounds %struct.hdac_chmap, ptr %0, i32 0, i32 1, i32 8
  %38 = getelementptr inbounds %struct.hdac_chmap, ptr %0, i32 0, i32 2
  %39 = load ptr, ptr %37, align 4
  %40 = load ptr, ptr %38, align 4
  %41 = tail call i32 %39(ptr noundef %40, i16 noundef zeroext %1, i32 noundef 0, i32 noundef %36) #12
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %92, label %140

43:                                               ; preds = %89, %23
  %44 = phi i32 [ 0, %23 ], [ %90, %89 ]
  %45 = getelementptr i8, ptr %5, i32 %44
  %46 = load i8, ptr %45, align 1
  %47 = add i8 %46, -3
  %48 = icmp ult i8 %47, 22
  br i1 %48, label %49, label %89

49:                                               ; preds = %43
  %50 = zext i8 %47 to i32
  %51 = lshr i32 3964735, %50
  %52 = and i32 %51, 1
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %89, label %54

54:                                               ; preds = %49
  %55 = sext i8 %47 to i32
  %56 = getelementptr inbounds [22 x ptr], ptr @switch.table.hdmi_chmap_ctl_put.16, i32 0, i32 %55
  %57 = load ptr, ptr %56, align 4
  %58 = getelementptr inbounds %struct.channel_map_table, ptr %57, i32 0, i32 1
  %59 = load i32, ptr %58, align 4
  %60 = icmp eq i32 %59, 0
  %61 = select i1 %24, i1 true, i1 %60
  br i1 %61, label %89, label %62

62:                                               ; preds = %54
  %63 = load i32, ptr %25, align 4
  %64 = icmp eq i32 %63, %59
  br i1 %64, label %86, label %65

65:                                               ; preds = %62
  %66 = load i32, ptr %26, align 4
  %67 = icmp eq i32 %66, %59
  br i1 %67, label %86, label %68

68:                                               ; preds = %65
  %69 = load i32, ptr %27, align 4
  %70 = icmp eq i32 %69, %59
  br i1 %70, label %86, label %71

71:                                               ; preds = %68
  %72 = load i32, ptr %28, align 4
  %73 = icmp eq i32 %72, %59
  br i1 %73, label %86, label %74

74:                                               ; preds = %71
  %75 = load i32, ptr %29, align 4
  %76 = icmp eq i32 %75, %59
  br i1 %76, label %86, label %77

77:                                               ; preds = %74
  %78 = load i32, ptr %30, align 4
  %79 = icmp eq i32 %78, %59
  br i1 %79, label %86, label %80

80:                                               ; preds = %77
  %81 = load i32, ptr %31, align 4
  %82 = icmp eq i32 %81, %59
  br i1 %82, label %86, label %83

83:                                               ; preds = %80
  %84 = load i32, ptr %32, align 4
  %85 = icmp eq i32 %84, %59
  br i1 %85, label %86, label %89

86:                                               ; preds = %83, %80, %77, %74, %71, %68, %65, %62
  %87 = phi i32 [ 6, %80 ], [ 5, %77 ], [ 4, %74 ], [ 3, %71 ], [ 2, %68 ], [ 1, %65 ], [ 0, %62 ], [ 7, %83 ]
  %88 = getelementptr [8 x i32], ptr %9, i32 0, i32 %87
  store i32 %44, ptr %88, align 4
  br label %89

89:                                               ; preds = %86, %83, %54, %49, %43
  %90 = add nuw nsw i32 %44, 1
  %91 = icmp eq i32 %90, %4
  br i1 %91, label %33, label %43

92:                                               ; preds = %35
  %93 = load ptr, ptr %37, align 4
  %94 = load ptr, ptr %38, align 4
  %95 = getelementptr inbounds [8 x i32], ptr %9, i32 0, i32 1
  %96 = load i32, ptr %95, align 4
  %97 = tail call i32 %93(ptr noundef %94, i16 noundef zeroext %1, i32 noundef 1, i32 noundef %96) #12
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %99, label %140

99:                                               ; preds = %92
  %100 = load ptr, ptr %37, align 4
  %101 = load ptr, ptr %38, align 4
  %102 = getelementptr inbounds [8 x i32], ptr %9, i32 0, i32 2
  %103 = load i32, ptr %102, align 4
  %104 = tail call i32 %100(ptr noundef %101, i16 noundef zeroext %1, i32 noundef 2, i32 noundef %103) #12
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %140

106:                                              ; preds = %99
  %107 = load ptr, ptr %37, align 4
  %108 = load ptr, ptr %38, align 4
  %109 = getelementptr inbounds [8 x i32], ptr %9, i32 0, i32 3
  %110 = load i32, ptr %109, align 4
  %111 = tail call i32 %107(ptr noundef %108, i16 noundef zeroext %1, i32 noundef 3, i32 noundef %110) #12
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %113, label %140

113:                                              ; preds = %106
  %114 = load ptr, ptr %37, align 4
  %115 = load ptr, ptr %38, align 4
  %116 = getelementptr inbounds [8 x i32], ptr %9, i32 0, i32 4
  %117 = load i32, ptr %116, align 4
  %118 = tail call i32 %114(ptr noundef %115, i16 noundef zeroext %1, i32 noundef 4, i32 noundef %117) #12
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %120, label %140

120:                                              ; preds = %113
  %121 = load ptr, ptr %37, align 4
  %122 = load ptr, ptr %38, align 4
  %123 = getelementptr inbounds [8 x i32], ptr %9, i32 0, i32 5
  %124 = load i32, ptr %123, align 4
  %125 = tail call i32 %121(ptr noundef %122, i16 noundef zeroext %1, i32 noundef 5, i32 noundef %124) #12
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %127, label %140

127:                                              ; preds = %120
  %128 = load ptr, ptr %37, align 4
  %129 = load ptr, ptr %38, align 4
  %130 = getelementptr inbounds [8 x i32], ptr %9, i32 0, i32 6
  %131 = load i32, ptr %130, align 4
  %132 = tail call i32 %128(ptr noundef %129, i16 noundef zeroext %1, i32 noundef 6, i32 noundef %131) #12
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %134, label %140

134:                                              ; preds = %127
  %135 = load ptr, ptr %37, align 4
  %136 = load ptr, ptr %38, align 4
  %137 = getelementptr inbounds [8 x i32], ptr %9, i32 0, i32 7
  %138 = load i32, ptr %137, align 4
  %139 = tail call i32 %135(ptr noundef %136, i16 noundef zeroext %1, i32 noundef 7, i32 noundef %138) #12
  br label %140

140:                                              ; preds = %134, %127, %120, %113, %106, %99, %92, %35
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %9) #12
  br label %417

141:                                              ; preds = %7
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %8) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %8, i8 0, i32 32, i1 false) #12, !annotation !8
  br label %142

142:                                              ; preds = %147, %141
  %143 = phi i32 [ 0, %141 ], [ %148, %147 ]
  %144 = getelementptr [50 x %struct.hdac_cea_channel_speaker_allocation], ptr @channel_allocations, i32 0, i32 %143
  %145 = load i32, ptr %144, align 4
  %146 = icmp eq i32 %145, %3
  br i1 %146, label %150, label %147

147:                                              ; preds = %142
  %148 = add nuw nsw i32 %143, 1
  %149 = icmp eq i32 %148, 50
  br i1 %149, label %150, label %142

150:                                              ; preds = %147, %142
  %151 = phi i32 [ %143, %142 ], [ 50, %147 ]
  %152 = getelementptr [50 x [8 x i32]], ptr @hdmi_channel_mapping, i32 0, i32 %3, i32 1
  %153 = load i32, ptr %152, align 4
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %155, label %248

155:                                              ; preds = %150
  %156 = getelementptr [50 x %struct.hdac_cea_channel_speaker_allocation], ptr @channel_allocations, i32 0, i32 %151, i32 2
  %157 = load i32, ptr %156, align 4
  %158 = icmp sgt i32 %157, 0
  br i1 %158, label %159, label %164

159:                                              ; preds = %181, %155
  %160 = phi i32 [ %182, %181 ], [ %157, %155 ]
  %161 = phi i32 [ %188, %181 ], [ 0, %155 ]
  %162 = phi i32 [ %185, %181 ], [ 0, %155 ]
  %163 = icmp sgt i32 %162, 7
  br i1 %163, label %169, label %172, !prof !9

164:                                              ; preds = %181, %155
  %165 = phi i32 [ 0, %155 ], [ %188, %181 ]
  %166 = getelementptr [50 x %struct.hdac_cea_channel_speaker_allocation], ptr @channel_allocations, i32 0, i32 %151, i32 1, i32 7
  %167 = load i32, ptr %166, align 4
  %168 = icmp eq i32 %167, 0
  br i1 %168, label %190, label %193

169:                                              ; preds = %178, %159
  %170 = phi i32 [ %162, %159 ], [ 8, %178 ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 357, i32 noundef 9, ptr noundef null) #12
  %171 = load i32, ptr %156, align 4
  br label %181

172:                                              ; preds = %178, %159
  %173 = phi i32 [ %179, %178 ], [ %162, %159 ]
  %174 = sub i32 7, %173
  %175 = getelementptr [50 x %struct.hdac_cea_channel_speaker_allocation], ptr @channel_allocations, i32 0, i32 %151, i32 1, i32 %174
  %176 = load i32, ptr %175, align 4
  %177 = icmp eq i32 %176, 0
  br i1 %177, label %178, label %181

178:                                              ; preds = %172
  %179 = add i32 %173, 1
  %180 = icmp eq i32 %179, 8
  br i1 %180, label %169, label %172, !prof !9

181:                                              ; preds = %172, %169
  %182 = phi i32 [ %171, %169 ], [ %160, %172 ]
  %183 = phi i32 [ %170, %169 ], [ %173, %172 ]
  %184 = shl i32 %161, 4
  %185 = add i32 %183, 1
  %186 = or i32 %183, %184
  %187 = getelementptr [50 x [8 x i32]], ptr @hdmi_channel_mapping, i32 0, i32 %3, i32 %161
  store i32 %186, ptr %187, align 4
  %188 = add nuw nsw i32 %161, 1
  %189 = icmp slt i32 %188, %182
  br i1 %189, label %159, label %164

190:                                              ; preds = %164
  %191 = add i32 %165, 1
  %192 = getelementptr [50 x [8 x i32]], ptr @hdmi_channel_mapping, i32 0, i32 %3, i32 %165
  store i32 240, ptr %192, align 4
  br label %193

193:                                              ; preds = %190, %164
  %194 = phi i32 [ %165, %164 ], [ %191, %190 ]
  %195 = getelementptr [50 x %struct.hdac_cea_channel_speaker_allocation], ptr @channel_allocations, i32 0, i32 %151, i32 1, i32 6
  %196 = load i32, ptr %195, align 4
  %197 = icmp eq i32 %196, 0
  br i1 %197, label %198, label %201

198:                                              ; preds = %193
  %199 = add i32 %194, 1
  %200 = getelementptr [50 x [8 x i32]], ptr @hdmi_channel_mapping, i32 0, i32 %3, i32 %194
  store i32 241, ptr %200, align 4
  br label %201

201:                                              ; preds = %198, %193
  %202 = phi i32 [ %194, %193 ], [ %199, %198 ]
  %203 = getelementptr [50 x %struct.hdac_cea_channel_speaker_allocation], ptr @channel_allocations, i32 0, i32 %151, i32 1, i32 5
  %204 = load i32, ptr %203, align 4
  %205 = icmp eq i32 %204, 0
  br i1 %205, label %206, label %209

206:                                              ; preds = %201
  %207 = add i32 %202, 1
  %208 = getelementptr [50 x [8 x i32]], ptr @hdmi_channel_mapping, i32 0, i32 %3, i32 %202
  store i32 242, ptr %208, align 4
  br label %209

209:                                              ; preds = %206, %201
  %210 = phi i32 [ %202, %201 ], [ %207, %206 ]
  %211 = getelementptr [50 x %struct.hdac_cea_channel_speaker_allocation], ptr @channel_allocations, i32 0, i32 %151, i32 1, i32 4
  %212 = load i32, ptr %211, align 4
  %213 = icmp eq i32 %212, 0
  br i1 %213, label %214, label %217

214:                                              ; preds = %209
  %215 = add i32 %210, 1
  %216 = getelementptr [50 x [8 x i32]], ptr @hdmi_channel_mapping, i32 0, i32 %3, i32 %210
  store i32 243, ptr %216, align 4
  br label %217

217:                                              ; preds = %214, %209
  %218 = phi i32 [ %210, %209 ], [ %215, %214 ]
  %219 = getelementptr [50 x %struct.hdac_cea_channel_speaker_allocation], ptr @channel_allocations, i32 0, i32 %151, i32 1, i32 3
  %220 = load i32, ptr %219, align 4
  %221 = icmp eq i32 %220, 0
  br i1 %221, label %222, label %225

222:                                              ; preds = %217
  %223 = add i32 %218, 1
  %224 = getelementptr [50 x [8 x i32]], ptr @hdmi_channel_mapping, i32 0, i32 %3, i32 %218
  store i32 244, ptr %224, align 4
  br label %225

225:                                              ; preds = %222, %217
  %226 = phi i32 [ %218, %217 ], [ %223, %222 ]
  %227 = getelementptr [50 x %struct.hdac_cea_channel_speaker_allocation], ptr @channel_allocations, i32 0, i32 %151, i32 1, i32 2
  %228 = load i32, ptr %227, align 4
  %229 = icmp eq i32 %228, 0
  br i1 %229, label %230, label %233

230:                                              ; preds = %225
  %231 = add i32 %226, 1
  %232 = getelementptr [50 x [8 x i32]], ptr @hdmi_channel_mapping, i32 0, i32 %3, i32 %226
  store i32 245, ptr %232, align 4
  br label %233

233:                                              ; preds = %230, %225
  %234 = phi i32 [ %226, %225 ], [ %231, %230 ]
  %235 = getelementptr [50 x %struct.hdac_cea_channel_speaker_allocation], ptr @channel_allocations, i32 0, i32 %151, i32 1, i32 1
  %236 = load i32, ptr %235, align 4
  %237 = icmp eq i32 %236, 0
  br i1 %237, label %238, label %241

238:                                              ; preds = %233
  %239 = add i32 %234, 1
  %240 = getelementptr [50 x [8 x i32]], ptr @hdmi_channel_mapping, i32 0, i32 %3, i32 %234
  store i32 246, ptr %240, align 4
  br label %241

241:                                              ; preds = %238, %233
  %242 = phi i32 [ %234, %233 ], [ %239, %238 ]
  %243 = getelementptr [50 x %struct.hdac_cea_channel_speaker_allocation], ptr @channel_allocations, i32 0, i32 %151, i32 1, i32 0
  %244 = load i32, ptr %243, align 4
  %245 = icmp eq i32 %244, 0
  br i1 %245, label %246, label %248

246:                                              ; preds = %241
  %247 = getelementptr [50 x [8 x i32]], ptr @hdmi_channel_mapping, i32 0, i32 %3, i32 %242
  store i32 247, ptr %247, align 4
  br label %248

248:                                              ; preds = %246, %241, %150
  br i1 %2, label %249, label %270

249:                                              ; preds = %248
  %250 = getelementptr [50 x %struct.hdac_cea_channel_speaker_allocation], ptr @channel_allocations, i32 0, i32 %151, i32 2
  %251 = load i32, ptr %250, align 4
  %252 = icmp sgt i32 %251, 0
  br i1 %252, label %257, label %253

253:                                              ; preds = %255, %249
  %254 = phi i32 [ 0, %249 ], [ %251, %255 ]
  br label %264

255:                                              ; preds = %257
  %256 = icmp ult i32 %251, 8
  br i1 %256, label %253, label %270

257:                                              ; preds = %257, %249
  %258 = phi i32 [ %262, %257 ], [ 0, %249 ]
  %259 = shl i32 %258, 4
  %260 = or i32 %259, %258
  %261 = getelementptr [8 x i32], ptr %8, i32 0, i32 %258
  store i32 %260, ptr %261, align 4
  %262 = add nuw nsw i32 %258, 1
  %263 = icmp eq i32 %262, %251
  br i1 %263, label %255, label %257

264:                                              ; preds = %264, %253
  %265 = phi i32 [ %268, %264 ], [ %254, %253 ]
  %266 = or i32 %265, 240
  %267 = getelementptr [8 x i32], ptr %8, i32 0, i32 %265
  store i32 %266, ptr %267, align 4
  %268 = add nuw i32 %265, 1
  %269 = icmp eq i32 %268, 8
  br i1 %269, label %270, label %264

270:                                              ; preds = %264, %255, %248
  %271 = getelementptr inbounds %struct.hdac_chmap, ptr %0, i32 0, i32 1, i32 8
  %272 = getelementptr inbounds %struct.hdac_chmap, ptr %0, i32 0, i32 2
  %273 = getelementptr [50 x [8 x i32]], ptr @hdmi_channel_mapping, i32 0, i32 %3, i32 0
  %274 = select i1 %2, ptr %8, ptr %273
  %275 = load i32, ptr %274, align 4
  %276 = and i32 %275, 15
  %277 = lshr i32 %275, 4
  %278 = and i32 %277, 15
  %279 = load ptr, ptr %271, align 4
  %280 = load ptr, ptr %272, align 4
  %281 = tail call i32 %279(ptr noundef %280, i16 noundef zeroext %1, i32 noundef %276, i32 noundef %278) #12
  %282 = icmp eq i32 %281, 0
  br i1 %282, label %283, label %365

283:                                              ; preds = %270
  %284 = getelementptr inbounds [8 x i32], ptr %8, i32 0, i32 1
  %285 = select i1 %2, ptr %284, ptr %152
  %286 = load i32, ptr %285, align 4
  %287 = and i32 %286, 15
  %288 = lshr i32 %286, 4
  %289 = and i32 %288, 15
  %290 = load ptr, ptr %271, align 4
  %291 = load ptr, ptr %272, align 4
  %292 = tail call i32 %290(ptr noundef %291, i16 noundef zeroext %1, i32 noundef %287, i32 noundef %289) #12
  %293 = icmp eq i32 %292, 0
  br i1 %293, label %294, label %365

294:                                              ; preds = %283
  %295 = getelementptr inbounds [8 x i32], ptr %8, i32 0, i32 2
  %296 = getelementptr [50 x [8 x i32]], ptr @hdmi_channel_mapping, i32 0, i32 %3, i32 2
  %297 = select i1 %2, ptr %295, ptr %296
  %298 = load i32, ptr %297, align 4
  %299 = and i32 %298, 15
  %300 = lshr i32 %298, 4
  %301 = and i32 %300, 15
  %302 = load ptr, ptr %271, align 4
  %303 = load ptr, ptr %272, align 4
  %304 = tail call i32 %302(ptr noundef %303, i16 noundef zeroext %1, i32 noundef %299, i32 noundef %301) #12
  %305 = icmp eq i32 %304, 0
  br i1 %305, label %306, label %365

306:                                              ; preds = %294
  %307 = getelementptr inbounds [8 x i32], ptr %8, i32 0, i32 3
  %308 = getelementptr [50 x [8 x i32]], ptr @hdmi_channel_mapping, i32 0, i32 %3, i32 3
  %309 = select i1 %2, ptr %307, ptr %308
  %310 = load i32, ptr %309, align 4
  %311 = and i32 %310, 15
  %312 = lshr i32 %310, 4
  %313 = and i32 %312, 15
  %314 = load ptr, ptr %271, align 4
  %315 = load ptr, ptr %272, align 4
  %316 = tail call i32 %314(ptr noundef %315, i16 noundef zeroext %1, i32 noundef %311, i32 noundef %313) #12
  %317 = icmp eq i32 %316, 0
  br i1 %317, label %318, label %365

318:                                              ; preds = %306
  %319 = getelementptr inbounds [8 x i32], ptr %8, i32 0, i32 4
  %320 = getelementptr [50 x [8 x i32]], ptr @hdmi_channel_mapping, i32 0, i32 %3, i32 4
  %321 = select i1 %2, ptr %319, ptr %320
  %322 = load i32, ptr %321, align 4
  %323 = and i32 %322, 15
  %324 = lshr i32 %322, 4
  %325 = and i32 %324, 15
  %326 = load ptr, ptr %271, align 4
  %327 = load ptr, ptr %272, align 4
  %328 = tail call i32 %326(ptr noundef %327, i16 noundef zeroext %1, i32 noundef %323, i32 noundef %325) #12
  %329 = icmp eq i32 %328, 0
  br i1 %329, label %330, label %365

330:                                              ; preds = %318
  %331 = getelementptr inbounds [8 x i32], ptr %8, i32 0, i32 5
  %332 = getelementptr [50 x [8 x i32]], ptr @hdmi_channel_mapping, i32 0, i32 %3, i32 5
  %333 = select i1 %2, ptr %331, ptr %332
  %334 = load i32, ptr %333, align 4
  %335 = and i32 %334, 15
  %336 = lshr i32 %334, 4
  %337 = and i32 %336, 15
  %338 = load ptr, ptr %271, align 4
  %339 = load ptr, ptr %272, align 4
  %340 = tail call i32 %338(ptr noundef %339, i16 noundef zeroext %1, i32 noundef %335, i32 noundef %337) #12
  %341 = icmp eq i32 %340, 0
  br i1 %341, label %342, label %365

342:                                              ; preds = %330
  %343 = getelementptr inbounds [8 x i32], ptr %8, i32 0, i32 6
  %344 = getelementptr [50 x [8 x i32]], ptr @hdmi_channel_mapping, i32 0, i32 %3, i32 6
  %345 = select i1 %2, ptr %343, ptr %344
  %346 = load i32, ptr %345, align 4
  %347 = and i32 %346, 15
  %348 = lshr i32 %346, 4
  %349 = and i32 %348, 15
  %350 = load ptr, ptr %271, align 4
  %351 = load ptr, ptr %272, align 4
  %352 = tail call i32 %350(ptr noundef %351, i16 noundef zeroext %1, i32 noundef %347, i32 noundef %349) #12
  %353 = icmp eq i32 %352, 0
  br i1 %353, label %354, label %365

354:                                              ; preds = %342
  %355 = getelementptr inbounds [8 x i32], ptr %8, i32 0, i32 7
  %356 = getelementptr [50 x [8 x i32]], ptr @hdmi_channel_mapping, i32 0, i32 %3, i32 7
  %357 = select i1 %2, ptr %355, ptr %356
  %358 = load i32, ptr %357, align 4
  %359 = and i32 %358, 15
  %360 = lshr i32 %358, 4
  %361 = and i32 %360, 15
  %362 = load ptr, ptr %271, align 4
  %363 = load ptr, ptr %272, align 4
  %364 = tail call i32 %362(ptr noundef %363, i16 noundef zeroext %1, i32 noundef %359, i32 noundef %361) #12
  br label %365

365:                                              ; preds = %354, %342, %330, %318, %306, %294, %283, %270
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %8) #12
  br label %366

366:                                              ; preds = %371, %365
  %367 = phi i32 [ 0, %365 ], [ %372, %371 ]
  %368 = getelementptr [50 x %struct.hdac_cea_channel_speaker_allocation], ptr @channel_allocations, i32 0, i32 %367
  %369 = load i32, ptr %368, align 4
  %370 = icmp eq i32 %369, %3
  br i1 %370, label %374, label %371

371:                                              ; preds = %366
  %372 = add nuw nsw i32 %367, 1
  %373 = icmp eq i32 %372, 50
  br i1 %373, label %374, label %366

374:                                              ; preds = %371, %366
  %375 = phi i32 [ %367, %366 ], [ 50, %371 ]
  %376 = icmp ult i32 %375, 50
  %377 = getelementptr [50 x %struct.hdac_cea_channel_speaker_allocation], ptr @channel_allocations, i32 0, i32 %375, i32 2
  br label %378

378:                                              ; preds = %412, %374
  %379 = phi i32 [ 0, %374 ], [ %415, %412 ]
  br i1 %376, label %380, label %412

380:                                              ; preds = %378
  %381 = load i32, ptr %377, align 4
  %382 = icmp slt i32 %379, %381
  br i1 %382, label %383, label %412

383:                                              ; preds = %380
  %384 = getelementptr [50 x [8 x i32]], ptr @hdmi_channel_mapping, i32 0, i32 %3, i32 %379
  %385 = load i32, ptr %384, align 4
  %386 = trunc i32 %385 to i8
  %387 = and i8 %386, 15
  %388 = icmp ugt i8 %387, 7
  br i1 %388, label %412, label %389

389:                                              ; preds = %383
  %390 = zext i8 %387 to i32
  %391 = sub nuw nsw i32 7, %390
  %392 = getelementptr [50 x %struct.hdac_cea_channel_speaker_allocation], ptr @channel_allocations, i32 0, i32 %375, i32 1, i32 %391
  %393 = load i32, ptr %392, align 4
  switch i32 %393, label %412 [
    i32 1, label %410
    i32 4, label %394
    i32 32, label %395
    i32 128, label %396
    i32 1024, label %397
    i32 2, label %398
    i32 256, label %399
    i32 512, label %400
    i32 64, label %401
    i32 8, label %402
    i32 16, label %403
    i32 8192, label %404
    i32 32768, label %405
    i32 2048, label %406
    i32 4096, label %407
    i32 65536, label %408
    i32 16384, label %409
  ]

394:                                              ; preds = %389
  br label %410

395:                                              ; preds = %389
  br label %410

396:                                              ; preds = %389
  br label %410

397:                                              ; preds = %389
  br label %410

398:                                              ; preds = %389
  br label %410

399:                                              ; preds = %389
  br label %410

400:                                              ; preds = %389
  br label %410

401:                                              ; preds = %389
  br label %410

402:                                              ; preds = %389
  br label %410

403:                                              ; preds = %389
  br label %410

404:                                              ; preds = %389
  br label %410

405:                                              ; preds = %389
  br label %410

406:                                              ; preds = %389
  br label %410

407:                                              ; preds = %389
  br label %410

408:                                              ; preds = %389
  br label %410

409:                                              ; preds = %389
  br label %410

410:                                              ; preds = %409, %408, %407, %406, %405, %404, %403, %402, %401, %400, %399, %398, %397, %396, %395, %394, %389
  %411 = phi i8 [ 3, %389 ], [ 4, %394 ], [ 5, %395 ], [ 6, %396 ], [ 8, %397 ], [ 7, %398 ], [ 14, %399 ], [ 15, %400 ], [ 11, %401 ], [ 12, %402 ], [ 13, %403 ], [ 22, %404 ], [ 23, %405 ], [ 16, %406 ], [ 17, %407 ], [ 21, %408 ], [ 24, %409 ]
  br label %412

412:                                              ; preds = %410, %389, %383, %380, %378
  %413 = phi i8 [ 0, %383 ], [ %411, %410 ], [ 0, %389 ], [ 0, %380 ], [ 0, %378 ]
  %414 = getelementptr i8, ptr %5, i32 %379
  store i8 %413, ptr %414, align 1
  %415 = add nuw nsw i32 %379, 1
  %416 = icmp eq i32 %415, 8
  br i1 %416, label %417, label %378

417:                                              ; preds = %412, %140
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local i32 @snd_hdac_get_active_channels(i32 noundef %0) #3 {
  br label %2

2:                                                ; preds = %7, %1
  %3 = phi i32 [ 0, %1 ], [ %8, %7 ]
  %4 = getelementptr [50 x %struct.hdac_cea_channel_speaker_allocation], ptr @channel_allocations, i32 0, i32 %3
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, %0
  br i1 %6, label %10, label %7

7:                                                ; preds = %2
  %8 = add nuw nsw i32 %3, 1
  %9 = icmp eq i32 %8, 50
  br i1 %9, label %12, label %2

10:                                               ; preds = %2
  %11 = icmp ugt i32 %3, 49
  br i1 %11, label %12, label %13

12:                                               ; preds = %10, %7
  br label %13

13:                                               ; preds = %12, %10
  %14 = phi i32 [ 0, %12 ], [ %3, %10 ]
  %15 = getelementptr [50 x %struct.hdac_cea_channel_speaker_allocation], ptr @channel_allocations, i32 0, i32 %14, i32 2
  %16 = load i32, ptr %15, align 4
  ret i32 %16
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local nonnull ptr @snd_hdac_get_ch_alloc_from_ca(i32 noundef %0) #3 {
  br label %2

2:                                                ; preds = %7, %1
  %3 = phi i32 [ 0, %1 ], [ %8, %7 ]
  %4 = getelementptr [50 x %struct.hdac_cea_channel_speaker_allocation], ptr @channel_allocations, i32 0, i32 %3
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, %0
  br i1 %6, label %10, label %7

7:                                                ; preds = %2
  %8 = add nuw nsw i32 %3, 1
  %9 = icmp eq i32 %8, 50
  br i1 %9, label %10, label %2

10:                                               ; preds = %7, %2
  %11 = phi i32 [ %3, %2 ], [ 50, %7 ]
  %12 = getelementptr [50 x %struct.hdac_cea_channel_speaker_allocation], ptr @channel_allocations, i32 0, i32 %11
  ret ptr %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @snd_hdac_channel_allocation(ptr nocapture readnone %0, i32 noundef %1, i32 noundef %2, i1 noundef zeroext %3, i1 noundef zeroext %4, ptr nocapture noundef readonly %5) #0 {
  %7 = alloca [80 x i8], align 1
  %8 = xor i1 %3, true
  %9 = or i1 %8, %4
  br i1 %9, label %12, label %10

10:                                               ; preds = %6
  %11 = tail call fastcc i32 @hdmi_manual_channel_allocation(i32 noundef %2, ptr noundef %5)
  br label %105

12:                                               ; preds = %6
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %7) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(80) %7, i8 0, i32 80, i1 false) #12, !annotation !8
  %13 = icmp slt i32 %2, 3
  br i1 %13, label %103, label %14

14:                                               ; preds = %12
  %15 = and i32 %1, 1
  %16 = icmp eq i32 %15, 0
  %17 = select i1 %16, i32 0, i32 5
  %18 = shl i32 %1, 9
  %19 = and i32 %18, 1024
  %20 = lshr i32 %1, 1
  %21 = and i32 %20, 2
  %22 = or i32 %21, %19
  %23 = or i32 %22, %17
  %24 = and i32 %1, 8
  %25 = icmp eq i32 %24, 0
  %26 = or i32 %23, 160
  %27 = select i1 %25, i32 %23, i32 %26
  %28 = shl i32 %1, 2
  %29 = and i32 %28, 64
  %30 = or i32 %27, %29
  %31 = and i32 %1, 32
  %32 = icmp eq i32 %31, 0
  %33 = or i32 %30, 24
  %34 = select i1 %32, i32 %30, i32 %33
  %35 = and i32 %1, 64
  %36 = icmp eq i32 %35, 0
  %37 = or i32 %34, 768
  %38 = select i1 %36, i32 %34, i32 %37
  %39 = and i32 %1, 128
  %40 = icmp eq i32 %39, 0
  %41 = or i32 %38, 6144
  %42 = select i1 %40, i32 %38, i32 %41
  %43 = and i32 %1, 256
  %44 = icmp eq i32 %43, 0
  %45 = or i32 %42, 40960
  %46 = select i1 %44, i32 %42, i32 %45
  %47 = shl i32 %1, 7
  %48 = and i32 %47, 65536
  %49 = shl i32 %1, 4
  %50 = and i32 %49, 16384
  %51 = or i32 %50, %48
  %52 = or i32 %51, %46
  br label %53

53:                                               ; preds = %63, %14
  %54 = phi i32 [ 0, %14 ], [ %64, %63 ]
  %55 = getelementptr [50 x %struct.hdac_cea_channel_speaker_allocation], ptr @channel_allocations, i32 0, i32 %54, i32 2
  %56 = load i32, ptr %55, align 4
  %57 = icmp eq i32 %56, %2
  br i1 %57, label %58, label %63

58:                                               ; preds = %53
  %59 = getelementptr [50 x %struct.hdac_cea_channel_speaker_allocation], ptr @channel_allocations, i32 0, i32 %54, i32 3
  %60 = load i32, ptr %59, align 4
  %61 = and i32 %60, %52
  %62 = icmp eq i32 %61, %60
  br i1 %62, label %66, label %63

63:                                               ; preds = %58, %53
  %64 = add nuw nsw i32 %54, 1
  %65 = icmp eq i32 %64, 50
  br i1 %65, label %70, label %53

66:                                               ; preds = %58
  %67 = getelementptr [50 x %struct.hdac_cea_channel_speaker_allocation], ptr @channel_allocations, i32 0, i32 %54
  %68 = load i32, ptr %67, align 4
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %82

70:                                               ; preds = %66, %63
  br label %71

71:                                               ; preds = %79, %70
  %72 = phi i32 [ %80, %79 ], [ 0, %70 ]
  %73 = getelementptr [50 x %struct.hdac_cea_channel_speaker_allocation], ptr @channel_allocations, i32 0, i32 %72, i32 2
  %74 = load i32, ptr %73, align 4
  %75 = icmp eq i32 %74, %2
  br i1 %75, label %76, label %79

76:                                               ; preds = %71
  %77 = getelementptr [50 x %struct.hdac_cea_channel_speaker_allocation], ptr @channel_allocations, i32 0, i32 %72
  %78 = load i32, ptr %77, align 4
  br label %82

79:                                               ; preds = %71
  %80 = add nuw nsw i32 %72, 1
  %81 = icmp eq i32 %80, 50
  br i1 %81, label %82, label %71

82:                                               ; preds = %79, %76, %66
  %83 = phi i32 [ %68, %66 ], [ %78, %76 ], [ 0, %79 ]
  br label %84

84:                                               ; preds = %97, %82
  %85 = phi i32 [ 0, %82 ], [ %98, %97 ]
  %86 = phi i32 [ 0, %82 ], [ %99, %97 ]
  %87 = shl nuw nsw i32 1, %86
  %88 = and i32 %87, %1
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %97, label %90

90:                                               ; preds = %84
  %91 = getelementptr i8, ptr %7, i32 %85
  %92 = sub i32 80, %85
  %93 = getelementptr [11 x ptr], ptr @cea_speaker_allocation_names, i32 0, i32 %86
  %94 = load ptr, ptr %93, align 4
  %95 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %91, i32 noundef %92, ptr noundef nonnull @.str, ptr noundef %94) #12
  %96 = add i32 %95, %85
  br label %97

97:                                               ; preds = %90, %84
  %98 = phi i32 [ %96, %90 ], [ %85, %84 ]
  %99 = add nuw nsw i32 %86, 1
  %100 = icmp eq i32 %99, 11
  br i1 %100, label %101, label %84

101:                                              ; preds = %97
  %102 = getelementptr i8, ptr %7, i32 %98
  store i8 0, ptr %102, align 1
  br label %103

103:                                              ; preds = %101, %12
  %104 = phi i32 [ %83, %101 ], [ 0, %12 ]
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %7) #12
  br label %105

105:                                              ; preds = %103, %10
  %106 = phi i32 [ %104, %103 ], [ %11, %10 ]
  %107 = call i32 @llvm.smax.i32(i32 %106, i32 0)
  ret i32 %107
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define internal fastcc i32 @hdmi_manual_channel_allocation(i32 noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #3 {
  %3 = icmp sgt i32 %0, 0
  br i1 %3, label %7, label %4

4:                                                ; preds = %31, %2
  %5 = phi i32 [ 0, %2 ], [ %33, %31 ]
  %6 = phi i32 [ 0, %2 ], [ %32, %31 ]
  br label %36

7:                                                ; preds = %31, %2
  %8 = phi i32 [ %32, %31 ], [ 0, %2 ]
  %9 = phi i32 [ %33, %31 ], [ 0, %2 ]
  %10 = phi i32 [ %34, %31 ], [ 0, %2 ]
  %11 = getelementptr i8, ptr %1, i32 %10
  %12 = load i8, ptr %11, align 1
  %13 = add i8 %12, -3
  %14 = icmp ult i8 %13, 22
  br i1 %14, label %15, label %29

15:                                               ; preds = %7
  %16 = zext i8 %13 to i32
  %17 = lshr i32 3964735, %16
  %18 = and i32 %17, 1
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %29, label %20

20:                                               ; preds = %15
  %21 = sext i8 %13 to i32
  %22 = getelementptr inbounds [22 x ptr], ptr @switch.table.hdmi_chmap_ctl_put.16, i32 0, i32 %21
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.channel_map_table, ptr %23, i32 0, i32 1
  %25 = load i32, ptr %24, align 4
  %26 = icmp eq i32 %25, 0
  %27 = or i32 %25, %8
  %28 = add i32 %9, 1
  br i1 %26, label %29, label %31

29:                                               ; preds = %20, %15, %7
  %30 = phi i32 [ %27, %20 ], [ %8, %7 ], [ %8, %15 ]
  br label %31

31:                                               ; preds = %29, %20
  %32 = phi i32 [ %30, %29 ], [ %27, %20 ]
  %33 = phi i32 [ %9, %29 ], [ %28, %20 ]
  %34 = add nuw nsw i32 %10, 1
  %35 = icmp eq i32 %34, %0
  br i1 %35, label %4, label %7

36:                                               ; preds = %51, %4
  %37 = phi i32 [ 0, %4 ], [ %52, %51 ]
  %38 = getelementptr [50 x %struct.hdac_cea_channel_speaker_allocation], ptr @channel_allocations, i32 0, i32 %37, i32 2
  %39 = load i32, ptr %38, align 4
  %40 = icmp eq i32 %39, %0
  %41 = icmp eq i32 %5, %39
  %42 = select i1 %40, i1 true, i1 %41
  br i1 %42, label %43, label %51

43:                                               ; preds = %36
  %44 = getelementptr [50 x %struct.hdac_cea_channel_speaker_allocation], ptr @channel_allocations, i32 0, i32 %37, i32 3
  %45 = load i32, ptr %44, align 4
  %46 = and i32 %45, %6
  %47 = icmp eq i32 %46, %45
  br i1 %47, label %48, label %51

48:                                               ; preds = %43
  %49 = getelementptr [50 x %struct.hdac_cea_channel_speaker_allocation], ptr @channel_allocations, i32 0, i32 %37
  %50 = load i32, ptr %49, align 4
  br label %54

51:                                               ; preds = %43, %36
  %52 = add nuw nsw i32 %37, 1
  %53 = icmp eq i32 %52, 50
  br i1 %53, label %54, label %36

54:                                               ; preds = %51, %48
  %55 = phi i32 [ %50, %48 ], [ -1, %51 ]
  ret i32 %55
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @snd_hdac_register_chmap_ops(ptr noundef %0, ptr nocapture noundef writeonly %1) #4 {
  %3 = getelementptr inbounds %struct.hdac_chmap, ptr %1, i32 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(40) %3, ptr noundef nonnull align 4 dereferenceable(40) @chmap_ops, i32 40, i1 false)
  %4 = getelementptr inbounds %struct.hdac_chmap, ptr %1, i32 0, i32 2
  store ptr %0, ptr %4, align 4
  br label %5

5:                                                ; preds = %75, %2
  %6 = phi i32 [ 0, %2 ], [ %76, %75 ]
  %7 = getelementptr %struct.hdac_cea_channel_speaker_allocation, ptr @channel_allocations, i32 %6, i32 2
  store i32 0, ptr %7, align 4
  %8 = getelementptr %struct.hdac_cea_channel_speaker_allocation, ptr @channel_allocations, i32 %6, i32 3
  store i32 0, ptr %8, align 4
  %9 = getelementptr %struct.hdac_cea_channel_speaker_allocation, ptr @channel_allocations, i32 %6, i32 1, i32 0
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %5
  store i32 1, ptr %7, align 4
  store i32 %10, ptr %8, align 4
  br label %13

13:                                               ; preds = %12, %5
  %14 = phi i32 [ 0, %5 ], [ 1, %12 ]
  %15 = getelementptr %struct.hdac_cea_channel_speaker_allocation, ptr @channel_allocations, i32 %6, i32 1, i32 1
  %16 = load i32, ptr %15, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %13
  %19 = add nuw nsw i32 %14, 1
  store i32 %19, ptr %7, align 4
  %20 = or i32 %16, %10
  store i32 %20, ptr %8, align 4
  br label %21

21:                                               ; preds = %18, %13
  %22 = phi i32 [ %20, %18 ], [ %10, %13 ]
  %23 = phi i32 [ %19, %18 ], [ %14, %13 ]
  %24 = getelementptr %struct.hdac_cea_channel_speaker_allocation, ptr @channel_allocations, i32 %6, i32 1, i32 2
  %25 = load i32, ptr %24, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %21
  %28 = add nuw nsw i32 %23, 1
  store i32 %28, ptr %7, align 4
  %29 = or i32 %25, %22
  store i32 %29, ptr %8, align 4
  br label %30

30:                                               ; preds = %27, %21
  %31 = phi i32 [ %29, %27 ], [ %22, %21 ]
  %32 = phi i32 [ %28, %27 ], [ %23, %21 ]
  %33 = getelementptr %struct.hdac_cea_channel_speaker_allocation, ptr @channel_allocations, i32 %6, i32 1, i32 3
  %34 = load i32, ptr %33, align 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %30
  %37 = add nuw nsw i32 %32, 1
  store i32 %37, ptr %7, align 4
  %38 = or i32 %34, %31
  store i32 %38, ptr %8, align 4
  br label %39

39:                                               ; preds = %36, %30
  %40 = phi i32 [ %38, %36 ], [ %31, %30 ]
  %41 = phi i32 [ %37, %36 ], [ %32, %30 ]
  %42 = getelementptr %struct.hdac_cea_channel_speaker_allocation, ptr @channel_allocations, i32 %6, i32 1, i32 4
  %43 = load i32, ptr %42, align 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %48, label %45

45:                                               ; preds = %39
  %46 = add nuw nsw i32 %41, 1
  store i32 %46, ptr %7, align 4
  %47 = or i32 %43, %40
  store i32 %47, ptr %8, align 4
  br label %48

48:                                               ; preds = %45, %39
  %49 = phi i32 [ %47, %45 ], [ %40, %39 ]
  %50 = phi i32 [ %46, %45 ], [ %41, %39 ]
  %51 = getelementptr %struct.hdac_cea_channel_speaker_allocation, ptr @channel_allocations, i32 %6, i32 1, i32 5
  %52 = load i32, ptr %51, align 4
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %57, label %54

54:                                               ; preds = %48
  %55 = add nuw nsw i32 %50, 1
  store i32 %55, ptr %7, align 4
  %56 = or i32 %52, %49
  store i32 %56, ptr %8, align 4
  br label %57

57:                                               ; preds = %54, %48
  %58 = phi i32 [ %56, %54 ], [ %49, %48 ]
  %59 = phi i32 [ %55, %54 ], [ %50, %48 ]
  %60 = getelementptr %struct.hdac_cea_channel_speaker_allocation, ptr @channel_allocations, i32 %6, i32 1, i32 6
  %61 = load i32, ptr %60, align 4
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %66, label %63

63:                                               ; preds = %57
  %64 = add nuw nsw i32 %59, 1
  store i32 %64, ptr %7, align 4
  %65 = or i32 %61, %58
  store i32 %65, ptr %8, align 4
  br label %66

66:                                               ; preds = %63, %57
  %67 = phi i32 [ %65, %63 ], [ %58, %57 ]
  %68 = phi i32 [ %64, %63 ], [ %59, %57 ]
  %69 = getelementptr %struct.hdac_cea_channel_speaker_allocation, ptr @channel_allocations, i32 %6, i32 1, i32 7
  %70 = load i32, ptr %69, align 4
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %75, label %72

72:                                               ; preds = %66
  %73 = add nuw nsw i32 %68, 1
  store i32 %73, ptr %7, align 4
  %74 = or i32 %70, %67
  store i32 %74, ptr %8, align 4
  br label %75

75:                                               ; preds = %72, %66
  %76 = add nuw nsw i32 %6, 1
  %77 = icmp eq i32 %76, 50
  br i1 %77, label %78, label %5

78:                                               ; preds = %75
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @snd_hdac_add_chmap_ctls(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #12
  store ptr null, ptr %4, align 4, !annotation !8
  %5 = call i32 @snd_pcm_add_chmap_ctls(ptr noundef %0, i32 noundef 0, ptr noundef null, i32 noundef 0, i32 noundef %1, ptr noundef nonnull %4) #12
  %6 = icmp slt i32 %5, 0
  br i1 %6, label %27, label %7

7:                                                ; preds = %3
  %8 = load ptr, ptr %4, align 4
  %9 = getelementptr inbounds %struct.snd_pcm_chmap, ptr %8, i32 0, i32 6
  store ptr %2, ptr %9, align 4
  %10 = getelementptr inbounds %struct.snd_pcm_chmap, ptr %8, i32 0, i32 2
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.snd_kcontrol, ptr %11, i32 0, i32 2
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %22, label %15

15:                                               ; preds = %15, %7
  %16 = phi i32 [ %20, %15 ], [ 0, %7 ]
  %17 = getelementptr %struct.snd_kcontrol, ptr %11, i32 0, i32 10, i32 %16, i32 1
  %18 = load i32, ptr %17, align 4
  %19 = or i32 %18, 2
  store i32 %19, ptr %17, align 4
  %20 = add nuw i32 %16, 1
  %21 = icmp ult i32 %20, %13
  br i1 %21, label %15, label %22

22:                                               ; preds = %15, %7
  %23 = getelementptr inbounds %struct.snd_kcontrol, ptr %11, i32 0, i32 3
  store ptr @hdmi_chmap_ctl_info, ptr %23, align 4
  %24 = getelementptr inbounds %struct.snd_kcontrol, ptr %11, i32 0, i32 4
  store ptr @hdmi_chmap_ctl_get, ptr %24, align 4
  %25 = getelementptr inbounds %struct.snd_kcontrol, ptr %11, i32 0, i32 5
  store ptr @hdmi_chmap_ctl_put, ptr %25, align 4
  %26 = getelementptr inbounds %struct.snd_kcontrol, ptr %11, i32 0, i32 6
  store ptr @hdmi_chmap_ctl_tlv, ptr %26, align 4
  br label %27

27:                                               ; preds = %22, %3
  %28 = phi i32 [ 0, %22 ], [ %5, %3 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #12
  ret i32 %28
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_add_chmap_ctls(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @hdmi_chmap_ctl_info(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #6 {
  %3 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.snd_pcm_chmap, ptr %4, i32 0, i32 6
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %1, i32 0, i32 1
  store i32 2, ptr %7, align 8
  %8 = load i32, ptr %6, align 4
  %9 = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %1, i32 0, i32 3
  store i32 %8, ptr %9, align 8
  %10 = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %1, i32 0, i32 5
  store i32 0, ptr %10, align 8
  %11 = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %1, i32 0, i32 5, i32 0, i32 1
  store i32 36, ptr %11, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @hdmi_chmap_ctl_get(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = alloca [8 x i8], align 8
  %4 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.snd_pcm_chmap, ptr %5, i32 0, i32 6
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 7
  %9 = load i32, ptr %8, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #12
  store i64 0, ptr %3, align 8
  %10 = getelementptr inbounds %struct.hdac_chmap, ptr %7, i32 0, i32 1, i32 4
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.hdac_chmap, ptr %7, i32 0, i32 2
  %13 = load ptr, ptr %12, align 4
  call void %11(ptr noundef %13, i32 noundef %9, ptr noundef nonnull %3) #12
  %14 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %1, i32 0, i32 2
  %15 = load i8, ptr %3, align 8
  %16 = zext i8 %15 to i32
  store i32 %16, ptr %14, align 4
  %17 = getelementptr inbounds [8 x i8], ptr %3, i32 0, i32 1
  %18 = load i8, ptr %17, align 1
  %19 = zext i8 %18 to i32
  %20 = getelementptr [128 x i32], ptr %14, i32 0, i32 1
  store i32 %19, ptr %20, align 4
  %21 = getelementptr inbounds [8 x i8], ptr %3, i32 0, i32 2
  %22 = load i8, ptr %21, align 2
  %23 = zext i8 %22 to i32
  %24 = getelementptr %struct.snd_ctl_elem_value, ptr %1, i32 0, i32 2, i32 0, i32 0, i32 1
  store i32 %23, ptr %24, align 4
  %25 = getelementptr inbounds [8 x i8], ptr %3, i32 0, i32 3
  %26 = load i8, ptr %25, align 1
  %27 = zext i8 %26 to i32
  %28 = getelementptr [128 x i32], ptr %14, i32 0, i32 3
  store i32 %27, ptr %28, align 4
  %29 = getelementptr inbounds [8 x i8], ptr %3, i32 0, i32 4
  %30 = load i8, ptr %29, align 4
  %31 = zext i8 %30 to i32
  %32 = getelementptr %struct.snd_ctl_elem_value, ptr %1, i32 0, i32 2, i32 0, i32 0, i32 2
  store i32 %31, ptr %32, align 4
  %33 = getelementptr inbounds [8 x i8], ptr %3, i32 0, i32 5
  %34 = load i8, ptr %33, align 1
  %35 = zext i8 %34 to i32
  %36 = getelementptr [128 x i32], ptr %14, i32 0, i32 5
  store i32 %35, ptr %36, align 4
  %37 = getelementptr inbounds [8 x i8], ptr %3, i32 0, i32 6
  %38 = load i8, ptr %37, align 2
  %39 = zext i8 %38 to i32
  %40 = getelementptr %struct.snd_ctl_elem_value, ptr %1, i32 0, i32 2, i32 0, i32 0, i32 3
  store i32 %39, ptr %40, align 4
  %41 = getelementptr inbounds [8 x i8], ptr %3, i32 0, i32 7
  %42 = load i8, ptr %41, align 1
  %43 = zext i8 %42 to i32
  %44 = getelementptr [128 x i32], ptr %14, i32 0, i32 7
  store i32 %43, ptr %44, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #12
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @hdmi_chmap_ctl_put(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca [8 x i8], align 8
  %4 = alloca [8 x i8], align 8
  %5 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 8
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.snd_pcm_chmap, ptr %6, i32 0, i32 6
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 7
  %10 = load i32, ptr %9, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #12
  store i64 0, ptr %4, align 8, !annotation !8
  %11 = getelementptr inbounds %struct.hdac_chmap, ptr %8, i32 0, i32 1, i32 6
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.hdac_chmap, ptr %8, i32 0, i32 2
  %14 = load ptr, ptr %13, align 4
  %15 = tail call zeroext i1 %12(ptr noundef %14, i32 noundef %10) #12
  br i1 %15, label %16, label %300

16:                                               ; preds = %2
  %17 = getelementptr inbounds %struct.snd_ctl_elem_id, ptr %1, i32 0, i32 5
  %18 = load i32, ptr %17, align 4
  %19 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 1, i32 5
  %20 = load i32, ptr %19, align 4
  %21 = sub i32 %18, %20
  %22 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 2
  %23 = load i32, ptr %22, align 4
  %24 = tail call i32 asm sideeffect "cmp\09$1, $2\0A\09sbc\09$0, $1, $1\0A.inst\090xe320f014", "=r,r,Ir,~{cc}"(i32 %21, i32 %23) #12, !srcloc !10
  %25 = and i32 %24, %21
  %26 = load ptr, ptr %6, align 4
  %27 = getelementptr inbounds %struct.snd_pcm_chmap, ptr %6, i32 0, i32 1
  %28 = load i32, ptr %27, align 4
  %29 = getelementptr %struct.snd_pcm, ptr %26, i32 0, i32 8, i32 %28, i32 4
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %300, label %32

32:                                               ; preds = %37, %16
  %33 = phi ptr [ %39, %37 ], [ %30, %16 ]
  %34 = getelementptr inbounds %struct.snd_pcm_substream, ptr %33, i32 0, i32 3
  %35 = load i32, ptr %34, align 4
  %36 = icmp eq i32 %35, %25
  br i1 %36, label %41, label %37

37:                                               ; preds = %32
  %38 = getelementptr inbounds %struct.snd_pcm_substream, ptr %33, i32 0, i32 15
  %39 = load ptr, ptr %38, align 4
  %40 = icmp eq ptr %39, null
  br i1 %40, label %300, label %32

41:                                               ; preds = %32
  %42 = getelementptr inbounds %struct.snd_pcm_substream, ptr %33, i32 0, i32 11
  %43 = load ptr, ptr %42, align 4
  %44 = icmp eq ptr %43, null
  br i1 %44, label %300, label %45

45:                                               ; preds = %41
  %46 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %43, i32 0, i32 37
  %47 = load ptr, ptr %46, align 4
  %48 = load i32, ptr %47, align 8
  %49 = icmp ult i32 %48, 3
  br i1 %49, label %50, label %300

50:                                               ; preds = %45
  %51 = getelementptr inbounds [3 x i32], ptr @switch.table.hdmi_chmap_ctl_put, i32 0, i32 %48
  %52 = load i32, ptr %51, align 4
  %53 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %1, i32 0, i32 2
  %54 = load i32, ptr %53, align 4
  %55 = trunc i32 %54 to i8
  store i8 %55, ptr %3, align 8
  %56 = getelementptr [128 x i32], ptr %53, i32 0, i32 1
  %57 = load i32, ptr %56, align 4
  %58 = trunc i32 %57 to i8
  %59 = getelementptr inbounds [8 x i8], ptr %3, i32 0, i32 1
  store i8 %58, ptr %59, align 1
  %60 = getelementptr %struct.snd_ctl_elem_value, ptr %1, i32 0, i32 2, i32 0, i32 0, i32 1
  %61 = load i32, ptr %60, align 4
  %62 = trunc i32 %61 to i8
  %63 = getelementptr inbounds [8 x i8], ptr %3, i32 0, i32 2
  store i8 %62, ptr %63, align 2
  %64 = getelementptr [128 x i32], ptr %53, i32 0, i32 3
  %65 = load i32, ptr %64, align 4
  %66 = trunc i32 %65 to i8
  %67 = getelementptr inbounds [8 x i8], ptr %3, i32 0, i32 3
  store i8 %66, ptr %67, align 1
  %68 = getelementptr %struct.snd_ctl_elem_value, ptr %1, i32 0, i32 2, i32 0, i32 0, i32 2
  %69 = load i32, ptr %68, align 4
  %70 = trunc i32 %69 to i8
  %71 = getelementptr inbounds [8 x i8], ptr %3, i32 0, i32 4
  store i8 %70, ptr %71, align 4
  %72 = getelementptr [128 x i32], ptr %53, i32 0, i32 5
  %73 = load i32, ptr %72, align 4
  %74 = trunc i32 %73 to i8
  %75 = getelementptr inbounds [8 x i8], ptr %3, i32 0, i32 5
  store i8 %74, ptr %75, align 1
  %76 = getelementptr %struct.snd_ctl_elem_value, ptr %1, i32 0, i32 2, i32 0, i32 0, i32 3
  %77 = load i32, ptr %76, align 4
  %78 = trunc i32 %77 to i8
  %79 = getelementptr inbounds [8 x i8], ptr %3, i32 0, i32 6
  store i8 %78, ptr %79, align 2
  %80 = getelementptr [128 x i32], ptr %53, i32 0, i32 7
  %81 = load i32, ptr %80, align 4
  %82 = trunc i32 %81 to i8
  %83 = getelementptr inbounds [8 x i8], ptr %3, i32 0, i32 7
  store i8 %82, ptr %83, align 1
  %84 = getelementptr inbounds %struct.hdac_chmap, ptr %8, i32 0, i32 1, i32 4
  %85 = load ptr, ptr %84, align 4
  %86 = load ptr, ptr %13, align 4
  call void %85(ptr noundef %86, i32 noundef %10, ptr noundef nonnull %4) #12
  %87 = call i32 @bcmp(ptr noundef nonnull dereferenceable(8) %3, ptr noundef nonnull dereferenceable(8) %4, i32 8)
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %300, label %89

89:                                               ; preds = %50
  %90 = add i8 %55, -3
  %91 = icmp ult i8 %90, 22
  br i1 %91, label %92, label %104

92:                                               ; preds = %89
  %93 = zext i8 %90 to i32
  %94 = lshr i32 3964735, %93
  %95 = and i32 %94, 1
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %104, label %97

97:                                               ; preds = %92
  %98 = sext i8 %90 to i32
  %99 = getelementptr inbounds [22 x ptr], ptr @switch.table.hdmi_chmap_ctl_put.16, i32 0, i32 %98
  %100 = load ptr, ptr %99, align 4
  %101 = getelementptr inbounds %struct.channel_map_table, ptr %100, i32 0, i32 1
  %102 = load i32, ptr %101, align 4
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %104, label %106

104:                                              ; preds = %97, %92, %89
  %105 = phi i32 [ %102, %97 ], [ 0, %89 ], [ 0, %92 ]
  br label %106

106:                                              ; preds = %104, %97
  %107 = phi i32 [ %105, %104 ], [ %102, %97 ]
  %108 = phi i32 [ 0, %104 ], [ 1, %97 ]
  %109 = getelementptr inbounds i8, ptr %3, i32 1
  %110 = load i8, ptr %109, align 1
  %111 = add i8 %110, -3
  %112 = icmp ult i8 %111, 22
  br i1 %112, label %113, label %127

113:                                              ; preds = %106
  %114 = zext i8 %111 to i32
  %115 = lshr i32 3964735, %114
  %116 = and i32 %115, 1
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %127, label %118

118:                                              ; preds = %113
  %119 = sext i8 %111 to i32
  %120 = getelementptr inbounds [22 x ptr], ptr @switch.table.hdmi_chmap_ctl_put.16, i32 0, i32 %119
  %121 = load ptr, ptr %120, align 4
  %122 = getelementptr inbounds %struct.channel_map_table, ptr %121, i32 0, i32 1
  %123 = load i32, ptr %122, align 4
  %124 = icmp eq i32 %123, 0
  %125 = or i32 %123, %107
  %126 = add nuw nsw i32 %108, 1
  br i1 %124, label %127, label %129

127:                                              ; preds = %118, %113, %106
  %128 = phi i32 [ %125, %118 ], [ %107, %106 ], [ %107, %113 ]
  br label %129

129:                                              ; preds = %127, %118
  %130 = phi i32 [ %128, %127 ], [ %125, %118 ]
  %131 = phi i32 [ %108, %127 ], [ %126, %118 ]
  %132 = getelementptr inbounds i8, ptr %3, i32 2
  %133 = load i8, ptr %132, align 2
  %134 = add i8 %133, -3
  %135 = icmp ult i8 %134, 22
  br i1 %135, label %136, label %150

136:                                              ; preds = %129
  %137 = zext i8 %134 to i32
  %138 = lshr i32 3964735, %137
  %139 = and i32 %138, 1
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %150, label %141

141:                                              ; preds = %136
  %142 = sext i8 %134 to i32
  %143 = getelementptr inbounds [22 x ptr], ptr @switch.table.hdmi_chmap_ctl_put.16, i32 0, i32 %142
  %144 = load ptr, ptr %143, align 4
  %145 = getelementptr inbounds %struct.channel_map_table, ptr %144, i32 0, i32 1
  %146 = load i32, ptr %145, align 4
  %147 = icmp eq i32 %146, 0
  %148 = or i32 %146, %130
  %149 = add nsw i32 %131, 1
  br i1 %147, label %150, label %152

150:                                              ; preds = %141, %136, %129
  %151 = phi i32 [ %148, %141 ], [ %130, %129 ], [ %130, %136 ]
  br label %152

152:                                              ; preds = %150, %141
  %153 = phi i32 [ %151, %150 ], [ %148, %141 ]
  %154 = phi i32 [ %131, %150 ], [ %149, %141 ]
  %155 = getelementptr inbounds i8, ptr %3, i32 3
  %156 = load i8, ptr %155, align 1
  %157 = add i8 %156, -3
  %158 = icmp ult i8 %157, 22
  br i1 %158, label %159, label %173

159:                                              ; preds = %152
  %160 = zext i8 %157 to i32
  %161 = lshr i32 3964735, %160
  %162 = and i32 %161, 1
  %163 = icmp eq i32 %162, 0
  br i1 %163, label %173, label %164

164:                                              ; preds = %159
  %165 = sext i8 %157 to i32
  %166 = getelementptr inbounds [22 x ptr], ptr @switch.table.hdmi_chmap_ctl_put.16, i32 0, i32 %165
  %167 = load ptr, ptr %166, align 4
  %168 = getelementptr inbounds %struct.channel_map_table, ptr %167, i32 0, i32 1
  %169 = load i32, ptr %168, align 4
  %170 = icmp eq i32 %169, 0
  %171 = or i32 %169, %153
  %172 = add nsw i32 %154, 1
  br i1 %170, label %173, label %175

173:                                              ; preds = %164, %159, %152
  %174 = phi i32 [ %171, %164 ], [ %153, %152 ], [ %153, %159 ]
  br label %175

175:                                              ; preds = %173, %164
  %176 = phi i32 [ %174, %173 ], [ %171, %164 ]
  %177 = phi i32 [ %154, %173 ], [ %172, %164 ]
  %178 = getelementptr inbounds i8, ptr %3, i32 4
  %179 = load i8, ptr %178, align 4
  %180 = add i8 %179, -3
  %181 = icmp ult i8 %180, 22
  br i1 %181, label %182, label %196

182:                                              ; preds = %175
  %183 = zext i8 %180 to i32
  %184 = lshr i32 3964735, %183
  %185 = and i32 %184, 1
  %186 = icmp eq i32 %185, 0
  br i1 %186, label %196, label %187

187:                                              ; preds = %182
  %188 = sext i8 %180 to i32
  %189 = getelementptr inbounds [22 x ptr], ptr @switch.table.hdmi_chmap_ctl_put.16, i32 0, i32 %188
  %190 = load ptr, ptr %189, align 4
  %191 = getelementptr inbounds %struct.channel_map_table, ptr %190, i32 0, i32 1
  %192 = load i32, ptr %191, align 4
  %193 = icmp eq i32 %192, 0
  %194 = or i32 %192, %176
  %195 = add i32 %177, 1
  br i1 %193, label %196, label %198

196:                                              ; preds = %187, %182, %175
  %197 = phi i32 [ %194, %187 ], [ %176, %175 ], [ %176, %182 ]
  br label %198

198:                                              ; preds = %196, %187
  %199 = phi i32 [ %197, %196 ], [ %194, %187 ]
  %200 = phi i32 [ %177, %196 ], [ %195, %187 ]
  %201 = getelementptr inbounds i8, ptr %3, i32 5
  %202 = load i8, ptr %201, align 1
  %203 = add i8 %202, -3
  %204 = icmp ult i8 %203, 22
  br i1 %204, label %205, label %219

205:                                              ; preds = %198
  %206 = zext i8 %203 to i32
  %207 = lshr i32 3964735, %206
  %208 = and i32 %207, 1
  %209 = icmp eq i32 %208, 0
  br i1 %209, label %219, label %210

210:                                              ; preds = %205
  %211 = sext i8 %203 to i32
  %212 = getelementptr inbounds [22 x ptr], ptr @switch.table.hdmi_chmap_ctl_put.16, i32 0, i32 %211
  %213 = load ptr, ptr %212, align 4
  %214 = getelementptr inbounds %struct.channel_map_table, ptr %213, i32 0, i32 1
  %215 = load i32, ptr %214, align 4
  %216 = icmp eq i32 %215, 0
  %217 = or i32 %215, %199
  %218 = add i32 %200, 1
  br i1 %216, label %219, label %221

219:                                              ; preds = %210, %205, %198
  %220 = phi i32 [ %217, %210 ], [ %199, %198 ], [ %199, %205 ]
  br label %221

221:                                              ; preds = %219, %210
  %222 = phi i32 [ %220, %219 ], [ %217, %210 ]
  %223 = phi i32 [ %200, %219 ], [ %218, %210 ]
  %224 = getelementptr inbounds i8, ptr %3, i32 6
  %225 = load i8, ptr %224, align 2
  %226 = add i8 %225, -3
  %227 = icmp ult i8 %226, 22
  br i1 %227, label %228, label %242

228:                                              ; preds = %221
  %229 = zext i8 %226 to i32
  %230 = lshr i32 3964735, %229
  %231 = and i32 %230, 1
  %232 = icmp eq i32 %231, 0
  br i1 %232, label %242, label %233

233:                                              ; preds = %228
  %234 = sext i8 %226 to i32
  %235 = getelementptr inbounds [22 x ptr], ptr @switch.table.hdmi_chmap_ctl_put.16, i32 0, i32 %234
  %236 = load ptr, ptr %235, align 4
  %237 = getelementptr inbounds %struct.channel_map_table, ptr %236, i32 0, i32 1
  %238 = load i32, ptr %237, align 4
  %239 = icmp eq i32 %238, 0
  %240 = or i32 %238, %222
  %241 = add i32 %223, 1
  br i1 %239, label %242, label %244

242:                                              ; preds = %233, %228, %221
  %243 = phi i32 [ %240, %233 ], [ %222, %221 ], [ %222, %228 ]
  br label %244

244:                                              ; preds = %242, %233
  %245 = phi i32 [ %243, %242 ], [ %240, %233 ]
  %246 = phi i32 [ %223, %242 ], [ %241, %233 ]
  %247 = getelementptr inbounds i8, ptr %3, i32 7
  %248 = load i8, ptr %247, align 1
  %249 = add i8 %248, -3
  %250 = icmp ult i8 %249, 22
  br i1 %250, label %251, label %265

251:                                              ; preds = %244
  %252 = zext i8 %249 to i32
  %253 = lshr i32 3964735, %252
  %254 = and i32 %253, 1
  %255 = icmp eq i32 %254, 0
  br i1 %255, label %265, label %256

256:                                              ; preds = %251
  %257 = sext i8 %249 to i32
  %258 = getelementptr inbounds [22 x ptr], ptr @switch.table.hdmi_chmap_ctl_put.16, i32 0, i32 %257
  %259 = load ptr, ptr %258, align 4
  %260 = getelementptr inbounds %struct.channel_map_table, ptr %259, i32 0, i32 1
  %261 = load i32, ptr %260, align 4
  %262 = icmp eq i32 %261, 0
  %263 = or i32 %261, %245
  %264 = add i32 %246, 1
  br i1 %262, label %265, label %267

265:                                              ; preds = %256, %251, %244
  %266 = phi i32 [ %263, %256 ], [ %245, %244 ], [ %245, %251 ]
  br label %267

267:                                              ; preds = %265, %256
  %268 = phi i32 [ %266, %265 ], [ %263, %256 ]
  %269 = phi i32 [ %246, %265 ], [ %264, %256 ]
  br label %270

270:                                              ; preds = %282, %267
  %271 = phi i32 [ %283, %282 ], [ 0, %267 ]
  %272 = getelementptr [50 x %struct.hdac_cea_channel_speaker_allocation], ptr @channel_allocations, i32 0, i32 %271, i32 2
  %273 = load i32, ptr %272, align 4
  %274 = icmp eq i32 %273, 8
  %275 = icmp eq i32 %269, %273
  %276 = select i1 %274, i1 true, i1 %275
  br i1 %276, label %277, label %282

277:                                              ; preds = %270
  %278 = getelementptr [50 x %struct.hdac_cea_channel_speaker_allocation], ptr @channel_allocations, i32 0, i32 %271, i32 3
  %279 = load i32, ptr %278, align 4
  %280 = and i32 %279, %268
  %281 = icmp eq i32 %280, %279
  br i1 %281, label %285, label %282

282:                                              ; preds = %277, %270
  %283 = add nuw nsw i32 %271, 1
  %284 = icmp eq i32 %283, 50
  br i1 %284, label %300, label %270

285:                                              ; preds = %277
  %286 = getelementptr [50 x %struct.hdac_cea_channel_speaker_allocation], ptr @channel_allocations, i32 0, i32 %271
  %287 = load i32, ptr %286, align 4
  %288 = icmp slt i32 %287, 0
  br i1 %288, label %300, label %289

289:                                              ; preds = %285
  %290 = getelementptr inbounds %struct.hdac_chmap, ptr %8, i32 0, i32 1, i32 2
  %291 = load ptr, ptr %290, align 4
  %292 = icmp eq ptr %291, null
  br i1 %292, label %296, label %293

293:                                              ; preds = %289
  %294 = call i32 %291(ptr noundef %8, i32 noundef %287, i32 noundef 8, ptr noundef nonnull %3) #12
  %295 = icmp eq i32 %294, 0
  br i1 %295, label %296, label %300

296:                                              ; preds = %293, %289
  %297 = getelementptr inbounds %struct.hdac_chmap, ptr %8, i32 0, i32 1, i32 5
  %298 = load ptr, ptr %297, align 4
  %299 = load ptr, ptr %13, align 4
  call void %298(ptr noundef %299, i32 noundef %10, ptr noundef nonnull %3, i32 noundef %52) #12
  br label %300

300:                                              ; preds = %296, %293, %285, %282, %50, %45, %41, %37, %16, %2
  %301 = phi i32 [ 0, %296 ], [ 0, %2 ], [ 0, %41 ], [ -16, %45 ], [ 0, %50 ], [ -22, %285 ], [ %294, %293 ], [ 0, %16 ], [ -22, %282 ], [ 0, %37 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #12
  ret i32 %301
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @hdmi_chmap_ctl_tlv(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) #0 {
  %5 = alloca [8 x i32], align 4
  %6 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 8
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.snd_pcm_chmap, ptr %7, i32 0, i32 6
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.snd_kcontrol, ptr %0, i32 0, i32 7
  %11 = load i32, ptr %10, align 4
  %12 = icmp ult i32 %2, 8
  br i1 %12, label %154, label %13

13:                                               ; preds = %4
  %14 = tail call ptr @llvm.thread.pointer() #12
  %15 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 3
  %16 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %15) #13, !srcloc !11
  %17 = and i32 %16, -13
  %18 = or i32 %17, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %18) #12, !srcloc !12
  tail call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !13
  %19 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %3, i32 0, i32 -1090519041) #12, !srcloc !14
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %16) #12, !srcloc !12
  tail call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !13
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %154

21:                                               ; preds = %13
  %22 = getelementptr inbounds %struct.hdac_chmap, ptr %9, i32 0, i32 1
  %23 = getelementptr inbounds %struct.hdac_chmap, ptr %9, i32 0, i32 1, i32 3
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.hdac_chmap, ptr %9, i32 0, i32 2
  %26 = load ptr, ptr %25, align 4
  %27 = tail call i32 %24(ptr noundef %26, i32 noundef %11) #12
  %28 = and i32 %27, 2
  %29 = icmp eq i32 %28, 0
  %30 = select i1 %29, i32 5, i32 1029
  %31 = lshr i32 %27, 1
  %32 = and i32 %31, 2
  %33 = or i32 %30, %32
  %34 = and i32 %27, 8
  %35 = icmp eq i32 %34, 0
  %36 = or i32 %33, 160
  %37 = select i1 %35, i32 %33, i32 %36
  %38 = shl i32 %27, 2
  %39 = and i32 %38, 64
  %40 = or i32 %37, %39
  %41 = and i32 %27, 32
  %42 = icmp eq i32 %41, 0
  %43 = or i32 %40, 24
  %44 = select i1 %42, i32 %40, i32 %43
  %45 = and i32 %27, 64
  %46 = icmp eq i32 %45, 0
  %47 = or i32 %44, 768
  %48 = select i1 %46, i32 %44, i32 %47
  %49 = and i32 %27, 128
  %50 = icmp eq i32 %49, 0
  %51 = or i32 %48, 6144
  %52 = select i1 %50, i32 %48, i32 %51
  %53 = and i32 %27, 256
  %54 = icmp eq i32 %53, 0
  %55 = or i32 %52, 40960
  %56 = select i1 %54, i32 %52, i32 %55
  %57 = shl i32 %27, 7
  %58 = and i32 %57, 65536
  %59 = or i32 %56, %58
  %60 = shl i32 %27, 4
  %61 = and i32 %60, 16384
  %62 = or i32 %59, %61
  %63 = tail call i32 @__sw_hweight32(i32 noundef %62) #12
  %64 = icmp ult i32 %63, 2
  br i1 %64, label %145, label %65

65:                                               ; preds = %21
  %66 = getelementptr i32, ptr %3, i32 2
  %67 = add i32 %2, -8
  %68 = getelementptr inbounds %struct.hdac_chmap, ptr %9, i32 0, i32 1, i32 1
  br label %69

69:                                               ; preds = %142, %65
  %70 = phi i32 [ %67, %65 ], [ %136, %142 ]
  %71 = phi ptr [ %66, %65 ], [ %135, %142 ]
  %72 = phi i32 [ 2, %65 ], [ %143, %142 ]
  %73 = phi i32 [ 0, %65 ], [ %134, %142 ]
  %74 = shl i32 %72, 2
  %75 = add i32 %74, 8
  %76 = icmp ugt i32 %74, 32
  br label %77

77:                                               ; preds = %133, %69
  %78 = phi i32 [ %70, %69 ], [ %136, %133 ]
  %79 = phi ptr [ %71, %69 ], [ %135, %133 ]
  %80 = phi i32 [ %73, %69 ], [ %134, %133 ]
  %81 = phi i32 [ 0, %69 ], [ %137, %133 ]
  %82 = phi ptr [ @channel_allocations, %69 ], [ %138, %133 ]
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %5, i8 0, i32 32, i1 false), !annotation !8
  %83 = getelementptr inbounds %struct.hdac_cea_channel_speaker_allocation, ptr %82, i32 0, i32 2
  %84 = load i32, ptr %83, align 4
  %85 = icmp eq i32 %84, %72
  br i1 %85, label %86, label %133

86:                                               ; preds = %77
  %87 = getelementptr inbounds %struct.hdac_cea_channel_speaker_allocation, ptr %82, i32 0, i32 3
  %88 = load i32, ptr %87, align 4
  %89 = and i32 %88, %62
  %90 = icmp eq i32 %88, %89
  br i1 %90, label %91, label %133

91:                                               ; preds = %86
  %92 = load ptr, ptr %22, align 4
  %93 = call i32 %92(ptr noundef %9, ptr noundef %82, i32 noundef %72) #12
  %94 = icmp slt i32 %93, 0
  br i1 %94, label %140, label %95

95:                                               ; preds = %91
  %96 = icmp ult i32 %78, 8
  br i1 %96, label %140, label %97

97:                                               ; preds = %95
  %98 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %15) #13, !srcloc !11
  %99 = and i32 %98, -13
  %100 = or i32 %99, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %100) #12, !srcloc !12
  call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !13
  %101 = call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %79, i32 %93, i32 -1090519041) #12, !srcloc !15
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %98) #12, !srcloc !12
  call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !13
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %140

103:                                              ; preds = %97
  %104 = getelementptr i32, ptr %79, i32 1
  %105 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %15) #13, !srcloc !11
  %106 = and i32 %105, -13
  %107 = or i32 %106, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %107) #12, !srcloc !12
  call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !13
  %108 = call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %104, i32 %74, i32 -1090519041) #12, !srcloc !16
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %105) #12, !srcloc !12
  call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !13
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %110, label %140

110:                                              ; preds = %103
  %111 = getelementptr i32, ptr %79, i32 2
  %112 = add i32 %78, -8
  %113 = icmp ult i32 %112, %74
  br i1 %113, label %140, label %114

114:                                              ; preds = %110
  %115 = sub i32 %112, %74
  %116 = add i32 %75, %80
  %117 = load ptr, ptr %68, align 4
  call void %117(ptr noundef %9, ptr noundef %82, ptr noundef nonnull %5, i32 noundef %72) #12
  br i1 %76, label %118, label %119, !prof !9

118:                                              ; preds = %114
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 214, i32 noundef 9, ptr noundef nonnull @.str.15, i32 noundef 32, i32 noundef %74) #12
  br label %140

119:                                              ; preds = %114
  %120 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %111, i32 %74, i32 -1090519040) #14, !srcloc !17
  %121 = extractvalue { i32, i32 } %120, 0
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %123, label %128

123:                                              ; preds = %119
  %124 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %15) #13, !srcloc !11
  %125 = and i32 %124, -13
  %126 = or i32 %125, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %126) #12, !srcloc !12
  call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !13
  %127 = call i32 @arm_copy_to_user(ptr noundef %111, ptr noundef nonnull %5, i32 noundef %74) #12
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %124) #12, !srcloc !12
  call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !13
  br label %128

128:                                              ; preds = %123, %119
  %129 = phi i32 [ %127, %123 ], [ %74, %119 ]
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %131, label %140

131:                                              ; preds = %128
  %132 = getelementptr i32, ptr %111, i32 %72
  br label %133

133:                                              ; preds = %131, %86, %77
  %134 = phi i32 [ %116, %131 ], [ %80, %77 ], [ %80, %86 ]
  %135 = phi ptr [ %132, %131 ], [ %79, %77 ], [ %79, %86 ]
  %136 = phi i32 [ %115, %131 ], [ %78, %77 ], [ %78, %86 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #12
  %137 = add nuw nsw i32 %81, 1
  %138 = getelementptr %struct.hdac_cea_channel_speaker_allocation, ptr %82, i32 1
  %139 = icmp eq i32 %137, 50
  br i1 %139, label %142, label %77

140:                                              ; preds = %128, %118, %110, %103, %97, %95, %91
  %141 = phi i32 [ -14, %118 ], [ -19, %91 ], [ -12, %95 ], [ -14, %103 ], [ -14, %97 ], [ -12, %110 ], [ -14, %128 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #12
  br label %154

142:                                              ; preds = %133
  %143 = add i32 %72, 1
  %144 = icmp ugt i32 %143, %63
  br i1 %144, label %145, label %69

145:                                              ; preds = %142, %21
  %146 = phi i32 [ 0, %21 ], [ %134, %142 ]
  %147 = getelementptr i32, ptr %3, i32 1
  %148 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %15) #13, !srcloc !11
  %149 = and i32 %148, -13
  %150 = or i32 %149, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %150) #12, !srcloc !12
  call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !13
  %151 = call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %147, i32 %146, i32 -1090519041) #12, !srcloc !18
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %148) #12, !srcloc !12
  call void asm sideeffect "isb ", "~{memory}"() #12, !srcloc !13
  %152 = icmp eq i32 %151, 0
  %153 = select i1 %152, i32 0, i32 -14
  br label %154

154:                                              ; preds = %145, %140, %13, %4
  %155 = phi i32 [ %141, %140 ], [ -12, %4 ], [ -14, %13 ], [ %153, %145 ]
  ret i32 %155
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @hdmi_chmap_cea_alloc_validate_get_type(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, i32 noundef %2) #8 {
  %4 = getelementptr inbounds %struct.hdac_cea_channel_speaker_allocation, ptr %1, i32 0, i32 2
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, %2
  %7 = select i1 %6, i32 258, i32 -1
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @hdmi_cea_alloc_to_tlv_chmap(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2, i32 noundef %3) #0 {
  br label %5

5:                                                ; preds = %32, %4
  %6 = phi i32 [ 0, %4 ], [ %33, %32 ]
  %7 = phi i32 [ 7, %4 ], [ %34, %32 ]
  %8 = getelementptr %struct.hdac_cea_channel_speaker_allocation, ptr %1, i32 0, i32 1, i32 %7
  %9 = load i32, ptr %8, align 4
  switch i32 %9, label %28 [
    i32 0, label %32
    i32 1, label %26
    i32 4, label %10
    i32 32, label %11
    i32 128, label %12
    i32 1024, label %13
    i32 2, label %14
    i32 256, label %15
    i32 512, label %16
    i32 64, label %17
    i32 8, label %18
    i32 16, label %19
    i32 8192, label %20
    i32 32768, label %21
    i32 2048, label %22
    i32 4096, label %23
    i32 65536, label %24
    i32 16384, label %25
  ]

10:                                               ; preds = %5
  br label %26

11:                                               ; preds = %5
  br label %26

12:                                               ; preds = %5
  br label %26

13:                                               ; preds = %5
  br label %26

14:                                               ; preds = %5
  br label %26

15:                                               ; preds = %5
  br label %26

16:                                               ; preds = %5
  br label %26

17:                                               ; preds = %5
  br label %26

18:                                               ; preds = %5
  br label %26

19:                                               ; preds = %5
  br label %26

20:                                               ; preds = %5
  br label %26

21:                                               ; preds = %5
  br label %26

22:                                               ; preds = %5
  br label %26

23:                                               ; preds = %5
  br label %26

24:                                               ; preds = %5
  br label %26

25:                                               ; preds = %5
  br label %26

26:                                               ; preds = %25, %24, %23, %22, %21, %20, %19, %18, %17, %16, %15, %14, %13, %12, %11, %10, %5
  %27 = phi i32 [ 4, %10 ], [ 5, %11 ], [ 6, %12 ], [ 8, %13 ], [ 7, %14 ], [ 14, %15 ], [ 15, %16 ], [ 11, %17 ], [ 12, %18 ], [ 13, %19 ], [ 22, %20 ], [ 23, %21 ], [ 16, %22 ], [ 17, %23 ], [ 21, %24 ], [ 24, %25 ], [ 3, %5 ]
  br label %28

28:                                               ; preds = %26, %5
  %29 = phi i32 [ %27, %26 ], [ 0, %5 ]
  %30 = add i32 %6, 1
  %31 = getelementptr i32, ptr %2, i32 %6
  store i32 %29, ptr %31, align 4
  br label %32

32:                                               ; preds = %28, %5
  %33 = phi i32 [ %30, %28 ], [ %6, %5 ]
  %34 = add nsw i32 %7, -1
  %35 = icmp eq i32 %7, 0
  br i1 %35, label %36, label %5

36:                                               ; preds = %32
  %37 = icmp eq i32 %33, %3
  br i1 %37, label %39, label %38, !prof !19

38:                                               ; preds = %36
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 648, i32 noundef 9, ptr noundef null) #12
  br label %39

39:                                               ; preds = %38, %36
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @hdmi_pin_get_slot_channel(ptr noundef %0, i16 noundef zeroext %1, i32 noundef %2) #0 {
  %4 = tail call i32 @snd_hdac_codec_read(ptr noundef %0, i16 noundef zeroext %1, i32 noundef 0, i32 noundef 3892, i32 noundef %2) #12
  %5 = lshr i32 %4, 4
  %6 = and i32 %5, 15
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @hdmi_pin_set_slot_channel(ptr noundef %0, i16 noundef zeroext %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = shl i32 %3, 4
  %6 = or i32 %5, %2
  %7 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext %1, i32 noundef 0, i32 noundef 1844, i32 noundef %6) #12
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @hdmi_set_channel_count(ptr noundef %0, i16 noundef zeroext %1, i32 noundef %2) #0 {
  %4 = tail call i32 @snd_hdac_codec_read(ptr noundef %0, i16 noundef zeroext %1, i32 noundef 0, i32 noundef 3885, i32 noundef 0) #12
  %5 = add i32 %4, 1
  %6 = icmp eq i32 %5, %2
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  %8 = add i32 %2, -1
  %9 = tail call i32 @snd_hdac_codec_write(ptr noundef %0, i16 noundef zeroext %1, i32 noundef 0, i32 noundef 1837, i32 noundef %8) #12
  br label %10

10:                                               ; preds = %7, %3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hdac_codec_read(ptr noundef, i16 noundef zeroext, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hdac_codec_write(ptr noundef, i16 noundef zeroext, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sw_hweight32(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #10

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #11

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly nofree nounwind willreturn writeonly }
attributes #8 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { argmemonly nofree nounwind readonly willreturn }
attributes #12 = { nounwind }
attributes #13 = { nounwind readonly }
attributes #14 = { nounwind readnone }

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
!10 = !{i64 326246, i64 326263, i64 2147810333}
!11 = !{i64 3899881}
!12 = !{i64 3900078}
!13 = !{i64 2151385357}
!14 = !{i64 2153089055, i64 2153089335, i64 2153089669, i64 2153090003}
!15 = !{i64 2153097630, i64 2153097910, i64 2153098244, i64 2153098578}
!16 = !{i64 2153105777, i64 2153106057, i64 2153106391, i64 2153106725}
!17 = !{i64 2151404347, i64 2151404372}
!18 = !{i64 2153113925, i64 2153114205, i64 2153114539, i64 2153114873}
!19 = !{!"branch_weights", i32 2000, i32 1}
